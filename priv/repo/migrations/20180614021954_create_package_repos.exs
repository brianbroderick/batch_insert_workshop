defmodule BatchInsertWorkshop.Repo.Migrations.CreatePackageRepos do
  use Ecto.Migration

  def change do
    create table(:package_repos) do
      add :package_id, :integer
      add :git_repo_id, :integer
      add :version, :string

      timestamps()
    end
    create unique_index(:package_repos, [:git_repo_id, :package_id])
    create index(:package_repos, [:package_id])
  end
end
