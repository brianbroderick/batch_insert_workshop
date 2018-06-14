defmodule BatchInsertWorkshop.Model.PackageRepo do
  use Ecto.Schema
  import Ecto.Changeset


  schema "package_repos" do
    field :git_repo_id, :integer
    field :package_id, :integer
    field :version, :string

    timestamps()
  end

  @doc false
  def changeset(package_repo, attrs) do
    package_repo
    |> cast(attrs, [:package_id, :git_repo_id, :version])
    |> validate_required([:package_id, :git_repo_id, :version])
  end
end
