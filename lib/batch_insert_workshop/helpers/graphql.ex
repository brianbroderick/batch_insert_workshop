defmodule BatchInsertWorkshop.Graphql do
  @moduledoc """
  Module used for making GraphQL requests
  """

  alias BatchInsertWorkshop.{HTTPClient}
  alias HTTPoison.{Error, Response}

  @client HTTPClient
  @url "https://api.github.com/graphql"

  @spec fetch(String.t, String.t, map) :: {:ok, any} | {:error, any}
  def fetch(query, variables, token \\ bearer()) do
    headers = @client.token_to_headers(token)
    body =  %{
      query: query,
      variables: variables
    }

    @url
    |> @client.post(body, headers)
    |> handle_response
  end

  @spec handle_response(%Response{} | %Error{}) :: {:ok, any} | {:error, any}
  def handle_response(res) do
    case res do
      # HTTPoison error
      {:error, error} -> {:error, message: "Internal Server Error", code: error.reason}

      # GraphQL error
      {:ok, %{body: %{errors: errors}}} -> {:error, errors}
      {:ok, %{body: %{"errors" => errors}}} -> {:error, errors}

      # 500
      {:ok, %{status_code: code}} when code >= 500 ->
        {:error, message: "Internal Server Error", code: "internal_server_error"}

      # unauthenicated
      {:ok, %{status_code: code}} when code >= 400 ->
        {:error, message: "Unauthenticated", code: "unauthenticated"}

      # OK graphql request
      {:ok, %{body: body}} -> {:ok, body["data"]["organization"]["repositories"]}

      # The thing that should not be
      {_, _resp} -> {:error, message: "Unknown Error", code: "unknown"}
    end
  end

  @spec bearer :: String.t
  def bearer do
    "Bearer " <> System.get_env("BIW_GITHUB_PERSONAL_ACCESS_TOKEN")
  end
end
