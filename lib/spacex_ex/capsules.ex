defmodule SpacexEx.Capsules do
  use SpacexEx.Responder
  import SpacexEx

  def get_capsule(conn, id, params \\ []) do
    url = get_capsule_url(id, params)
    conn |> Client.get(url) |> handle_response
  end

  def get_capsule_url(id, params \\ []) do
    "https://api.spacexdata.com/v2/capsules/#{id}" <> query_string(params)
  end

  def get_capsules(conn, params) do
    url = get_capsules_url(params)
    conn |> Client.get(url) |> handle_response
  end

  def get_capsules_url(params) do
    "https://api.spacexdata.com/v2/capsules" <> query_string(params)
  end

  @doc """
  Implement the callback required by the `Responder` behavior
  """
  def build_response(body) do
    case body do
      %{"albums" => albums} -> build_albums(albums)
      %{"items" => items} -> infer_type_and_build(items)
      %{"album_type" => _} -> build_album(body)
    end
  end

  @doc false
  def infer_type_and_build(items) do
    case List.first(items) do
      %{"track_number" => _} -> build_tracks(items)
      %{"album_type" => _} -> build_albums(items)
      %{"album" => _} -> build_albums(items)
    end
  end

  @doc false
  def build_tracks(tracks) do
    paging = %Paging{items: tracks}
    tracks = Track.build_tracks(tracks)
    Map.put(paging, :items, tracks)
  end

  @doc false
  def build_album(album) do
    album = to_struct(Album, album)
    paging = to_struct(Paging, album.tracks)
    tracks = Enum.map(paging.items, &to_struct(Track, &1))
    paging = Map.put(paging, :items, tracks)
    Map.put(album, :tracks, paging)
  end

  @doc false
  def build_albums(albums), do: Enum.map(albums, &build_album/1)

  # def process_url(url) do
  #   "https://api.github.com" <> url
  # end
  #
  # def process_response_body(body) do
  #   body
  #   |> Poison.decode!()
  #   |> Map.take(@expected_fields)
  #   |> Enum.map(fn {k, v} -> {String.to_atom(k), v} end)
  # end
  #
  # # use HTTPoison.Base
  # # alias Tentacat.Client
  # #
  # @spec process_response_body(binary) :: term
  # def process_response_body(""), do: nil
  # def process_response_body(body), do: JSX.decode!(body, deserialization_options())
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
