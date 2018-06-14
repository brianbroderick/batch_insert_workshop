defmodule BatchInsertWorkshop.Model.GitRepo do
  use Ecto.Schema
  import Ecto.Changeset


  schema "git_repos" do
    field :name, :string
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(git_repo, attrs) do
    git_repo
    |> cast(attrs, [:name, :url])
    |> validate_required([:name, :url])
  end
end
