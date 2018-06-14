defmodule BatchInsertWorkshop.Model.Package do
  use Ecto.Schema
  import Ecto.Changeset


  schema "packages" do
    field :license, :string
    field :name, :string
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(package, attrs) do
    package
    |> cast(attrs, [:license, :name, :url])
    |> validate_required([:license, :name, :url])
  end
end
