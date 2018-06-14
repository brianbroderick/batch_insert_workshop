defmodule BatchInsertWorkshop.GithubApi do

  import Ecto.Query, warn: false
  alias BatchInsertWorkshop.Repo
  alias BatchInsertWorkshop.{Error,Graphql}
  # alias BatchInsertWorkshop.Model.{GitRepo,Language,RepoLanguage}

  @batch_size 10

  def repos(global_id \\ "") do
    case Graphql.fetch(query(global_id), input(global_id)) do
      {:ok, res} -> parse(res)
      {:error, errors} -> Error.from_response(errors)
    end
  end

  def parse(res) do
    IO.inspect res

    # languages = save_languages(res)
    # repos = save_repos(res["nodes"])
    # mapping(languages, repos, res)

    res["page_info"]["end_cursor"]
  end

  # def mapping(languages, repos, res) do
  #   now = Timex.now

  #   # %{git_repo_id: _, language_id: _, inserted_at: now, updated_at: now}
  #   map = Enum.flat_map(res["nodes"], fn(node) ->
  #           Enum.map(node["languages"]["nodes"], fn(language) ->
  #             %{git_repo_id: repos[node["name"]], language_id: languages[language["name"]], inserted_at: now, updated_at: now}
  #           end)
  #         end)

  #   Repo.insert_all(RepoLanguage, map,
  #                     conflict_target: [:git_repo_id, :language_id],
  #                     on_conflict: :nothing)
  # end

  # def save_languages(res) do
  #   {_, language_structs} = Repo.insert_all(Language, retrieve_languages(res["nodes"]),
  #                             conflict_target: :name,
  #                             on_conflict: from(r in Language, update: [set: [name: r.name]]),
  #                             returning: true)

  #   Enum.reduce(language_structs, %{}, fn(language, acc) ->
  #     Map.put(acc, language.name, language.id)
  #   end)
  # end

  # def retrieve_languages(nodes) do
  #   now = Timex.now

  #   uniq = Enum.reduce(nodes, %{}, fn(node, acc) ->
  #           Map.merge(acc,
  #             Enum.reduce(node["languages"]["nodes"], %{}, fn(lang, leaf) ->
  #               Map.put(leaf, lang["name"], 1)
  #             end)
  #           )
  #         end)

  #   Enum.map(uniq, fn({key, _value}) -> %{name: key, inserted_at: now, updated_at: now} end)
  # end

  # def save_repos(nodes) do
  #   now = Timex.now
  #   repos = Enum.map(nodes, fn(node) -> %{name: node["name"], url: node["url"], inserted_at: now, updated_at: now} end)

  #   {_, repo_structs} = Repo.insert_all(GitRepo, repos,
  #                             conflict_target: :name,
  #                             on_conflict: from(r in GitRepo, update: [set: [name: r.name]]),
  #                             returning: true)

  #   Enum.reduce(repo_structs, %{}, fn(repo, acc) ->
  #     Map.put(acc, repo.name, repo.id)
  #   end)
  # end

  defp query(global_id \\ "") do
    after_id = case global_id do
                "" -> ""
                id -> "after: $after,"
              end

    after_filter = case global_id do
                     "" -> ""
                     _ -> ", $after:String!"
                   end

    """
    query($first:Int!#{after_filter}){
      organization(login: "Podium") {
        repositories(first: $first, #{after_id}
                    orderBy:{field: NAME, direction: ASC}) {
          pageInfo{
            endCursor
          }
          nodes{
            name
            url
            languages(first: #{@batch_size}) {
              nodes{
                name
              }
            }
          }
        }
      }
    }
    """
  end

  defp input(global_id \\ "") do
    map = %{"first" => @batch_size}
    if global_id != "" do
      map = Map.put(map, "after", global_id)
    end
    map
  end
end
