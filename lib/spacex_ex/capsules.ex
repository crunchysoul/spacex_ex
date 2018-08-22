defmodule SpacexEx.Capsules do
  alias SpacexEx.Client
  @endpoint "/capsules"

  def endpoint do
    Client.clean_url(@endpoint)
    # |> IO.inspect()
  end

  def list do
    Client.get(endpoint())
  end
end
