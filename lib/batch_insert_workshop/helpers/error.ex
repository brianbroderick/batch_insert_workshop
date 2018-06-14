defmodule BatchInsertWorkshop.Error do
  @moduledoc """
  Error returned from Graphql
  """

  defstruct path: [], message: ""

  def from_response(errors) do
    Enum.map(errors, fn(error) ->
      %__MODULE__{path: error["path"], message: error["message"]}
    end)
  end
end
