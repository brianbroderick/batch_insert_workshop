defmodule BatchInsertWorkshop.HTTPClient do
  @moduledoc """
  Module used for making HTTP requests
  """
  use HTTPoison.Base
  alias BatchInsertWorkshop.SnakeCase

  def token_to_headers(bearer), do: [{"Authorization", "#{bearer}"}]

  @options [timeout: :timer.seconds(15), recv_timeout: :timer.seconds(15)]

  def process_url(url) do
    url
  end

  defp process_request_body(body), do: Poison.encode!(body)

  defp process_request_headers(headers) do
    headers
    |> put_content_type_header()
  end

  defp process_request_options(options), do: Keyword.merge(@options, options)

  defp process_response_body(""), do: ""

  defp process_response_body(body) do
    body
    |> Poison.decode()
    |> case do
      {:ok, response} -> response
      {:error, response} -> response
    end
    |> SnakeCase.call()
  end

  defp process_headers(headers), do: Map.new(headers)

  defp put_content_type_header(headers) do
    [{"Content-type", "application/json"} | headers]
  end
end
