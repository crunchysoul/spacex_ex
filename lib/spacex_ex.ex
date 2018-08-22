defmodule SpacexEx do
  alias SpacexEx.Client

  @endpoints %{
    capsules: "/capsules",
    info: "/info",
    info_roadster: "/info/roaster",
    info_history: "/info/history",
    launches_all_past: "/launches",
    launches_all: "/launches/all",
    launches_latest: "/launches/lastest",
    launches_next: "/launches/next",
    launches_upcoming: "/launches/upcoming",
    launchpad: "/launchpad",
    missions: "/missions",
    parts_caps: "/parts/caps",
    parts_cores: "/parts/cores",
    payloads: "/payloads",
    rockets: "/rockets"
  }

  @doc """
  List of capsule information
  """
  def list do
    capsules = Client.clean_url(@endpoint)
    Client.get(capsules)
  end

  @doc """
  Get a capsule information
  """
  def get(id) do
    @endpoint
    |> Client.id_endpoint(id)
    |> Client.get()
  end
end
