defmodule BatchInsertWorkshop.Repo.Migrations.CreateRepoLanguages do
  use Ecto.Migration

  def change do
    create table(:repo_languages) do
      add :git_repo_id, :integer
      add :language_id, :integer

      timestamps()
    end
    create unique_index(:repo_languages, [:git_repo_id, :language_id])
    create index(:repo_languages, [:language_id])
  end
end
