defmodule SpacexEx.Capsules do
  alias SpacexEx.Client
  @endpoint "/capsules"

  @doc """
  List of capsule information
  """
  def capsules do
    capsules = Client.clean_url(@endpoint)
    Client.get(capsules)
  end

  @doc """
  Get a capsule information
  """
  def id_endpoint(id) do
    endpoint =
      @endpoint
      |> Client.id_endpoint(id)
  end

  def get(id) do
    id
    |> id_endpoint()
    |> Client.get()
    |> case do
      {200, resp} ->
        resp

      {_, error} ->
        error
    end
  end
end
