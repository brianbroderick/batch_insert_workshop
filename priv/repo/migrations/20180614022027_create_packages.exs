defmodule BatchInsertWorkshop.Repo.Migrations.CreatePackages do
  use Ecto.Migration

  def change do
    create table(:packages) do
      add :license, :string
      add :name, :string
      add :url, :string

      timestamps()
    end
    create unique_index(:packages, [:name])
  end
end
