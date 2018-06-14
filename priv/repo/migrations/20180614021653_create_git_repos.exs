defmodule BatchInsertWorkshop.Repo.Migrations.CreateGitRepos do
  use Ecto.Migration

  def change do
    create table(:git_repos) do
      add :name, :string
      add :url, :string

      timestamps()
    end
    create unique_index(:git_repos, [:name])
  end
end
