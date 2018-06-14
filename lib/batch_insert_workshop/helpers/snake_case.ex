defmodule BatchInsertWorkshop.SnakeCase do
  @moduledoc """
  Transforms the given map's keys into underscore format
  """

  def call(response) when is_map(response) do
    Enum.reduce(response, %{}, fn
      ({key, value}, acc) ->
        new_value = call(value)
        new_key =
          key
          |> Macro.underscore()

        Map.put(acc, new_key, new_value)
    end)
  end

  def call(response) when is_list(response) do
    Enum.map(response, fn (element) ->
      call(element)
    end)
  end

  def call(response), do: response
end
