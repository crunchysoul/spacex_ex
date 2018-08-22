defmodule SpacexEx do
  alias SpacexEx.Client

  @endpoints %{
    capsules: "/capsules",
    info: "/info",
    launches: "/launches",
    launchpads: "/launchpads",
    missions: "/missions",
    parts_caps: "/parts/caps",
    parts_cores: "/parts/cores",
    payloads: "/payloads",
    rockets: "/rockets"
  }

  def capsules(), do: get(@endpoints.capsules)
  def capsules(id), do: get(@endpoints.capsules, id)
  def info(), do: get(@endpoints.info)
  def info(id), do: get(@endpoints.info, id)
  def info_roadster(), do: get(@endpoints.info, "roadster")
  def info_history(), do: get(@endpoints.info, "history")
  def launches(), do: get(@endpoints.launches)
  def launches(id), do: get(@endpoints.launches, id)
  def launches_all(), do: get(@endpoints.launches, "all")
  def launches_next(), do: get(@endpoints.launches, "next")
  def launches_latest(), do: get(@endpoints.launches, "latest")
  def launches_upcoming(), do: get(@endpoints.launches, "upcoming")
  def launchpads(), do: get(@endpoints.launchpads)
  def launchpads(id), do: get(@endpoints.launchpads, id)
  def missions(), do: get(@endpoints.missions)
  def missions(id), do: get(@endpoints.missions, id)
  def part_capsules(), do: get(@endpoints.parts_caps)
  def part_capsules(id), do: get(@endpoints.parts_caps, id)
  def part_cores(), do: get(@endpoints.parts_cores)
  def part_cores(id), do: get(@endpoints.parts_cores, id)
  def payloads(), do: get(@endpoints.payloads)
  def payloads(id), do: get(@endpoints.payloads, id)
  def rockets(), do: get(@endpoints.rockets)
  def rockets(id), do: get(@endpoints.rockets, id)

  defp get(endpoint), do: Client.get(endpoint)
  defp get(endpoint, id), do: endpoint |> Client.id_endpoint(id) |> Client.get()
end
