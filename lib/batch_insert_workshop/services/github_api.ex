defmodule BatchInsertWorkshop.GithubApi do

  import Ecto.Query, warn: false
  alias BatchInsertWorkshop.Repo
  alias BatchInsertWorkshop.{Error,Graphql}

  @batch_size 10

  def repos(global_id \\ "") do
    case Graphql.fetch(query(global_id), input(global_id)) do
      {:ok, res} -> parse(res)
      {:error, errors} -> Error.from_response(errors)
    end
  end

  def parse(res) do
    IO.inspect res

    res["page_info"]["end_cursor"]
  end

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
