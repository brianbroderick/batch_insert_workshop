defmodule BatchInsertWorkshop.Model.RepoLanguage do
  use Ecto.Schema
  import Ecto.Changeset


  schema "repo_languages" do
    field :git_repo_id, :integer
    field :language_id, :integer

    timestamps()
  end

  @doc false
  def changeset(repo_language, attrs) do
    repo_language
    |> cast(attrs, [:git_repo_id, :language_id])
    |> validate_required([:git_repo_id, :language_id])
  end
end
