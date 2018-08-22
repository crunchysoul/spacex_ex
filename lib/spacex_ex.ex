defmodule SpacexEx do
  @moduledoc """
  Documentation for SpacexEx.
  """
  # def process_url(url) do
  #   "https://api.github.com" <> url
  # end

  # use HTTPoison.Base
  # alias Tentacat.Client
  #
  # @spec process_response(HTTPoison.Response.t()) :: response
  # def process_response(%HTTPoison.Response{status_code: status_code, body: body} = resp),
  #   do: {status_code, body, resp}
  #
  # def delete(path, client, body \\ "") do
  #   _request(:delete, url(client, path), client.auth, body)
  # end
  #
  # def post(path, client, body \\ "") do
  #   _request(:post, url(client, path), client.auth, body)
  # end
  #
  # def patch(path, client, body \\ "") do
  #   _request(:patch, url(client, path), client.auth, body)
  # end
  #
  # def put(path, client, body \\ "") do
  #   _request(:put, url(client, path), client.auth, body)
  # end
  #
  # def get(conn_or_creds, url) do
  #   HTTPoison.get(url, get_headers(conn_or_creds))
  # end
  #
  # def put(conn_or_creds, url, body \\ "") do
  #   HTTPoison.put(url, body, put_headers(conn_or_creds))
  # end
  #
  # def post(conn_or_creds, url, body \\ "") do
  #   HTTPoison.post(url, body, post_headers(conn_or_creds))
  # end
  #
  # def delete(conn_or_creds, url) do
  #   HTTPoison.delete(url, delete_headers(conn_or_creds))
  # end
  #
  # def get_headers(conn_or_creds) do
  #   [{"Authorization", "Bearer #{access_token(conn_or_creds)}"}]
  # end
  #
  # def put_headers(conn_or_creds) do
  #   [
  #     {"Authorization", "Bearer #{access_token(conn_or_creds)}"},
  #     {"Content-Type", "application/json"}
  #   ]
  # end
  #
  # defp access_token(conn_or_creds) do
  #   Spotify.Credentials.new(conn_or_creds).access_token
  # end
  #
  # def post_headers(conn_or_creds), do: put_headers(conn_or_creds)
  # def delete_headers(conn_or_creds), do: get_headers(conn_or_creds)
  #
end
