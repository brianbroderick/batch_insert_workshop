defmodule BatchInsertWorkshop.Model.Language do
  use Ecto.Schema
  import Ecto.Changeset


  schema "languages" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(language, attrs) do
    language
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
