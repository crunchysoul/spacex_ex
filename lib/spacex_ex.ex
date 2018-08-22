defmodule SpacexEx do
  @moduledoc """
  Documentation for the SpacexEx package, a simple and easy API wrapper for [r-spacex/SpaceX-API](https://github.com/r-spacex/SpaceX-API) with Elixir.

  For usage information, see [the documentation](http://hexdocs.pm/spacex_ex), which
  includes guides, SpaceX API information and links to useful resources.
  """
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

  @doc """
  Get list of all capsule information

  ## Examples

      iex> SpacexEx.capsules()
      {200, [%{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}, %{active: true, crew_capacity: 0, ...}, ...]}

      iex> SpacexEx.capsules("")
      {200, [%{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}, %{active: true, crew_capacity: 0, ...}, ...]}

      iex> SpacexEx.capsules
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def capsules(), do: get(@endpoints.capsules)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def capsules(id), do: get(@endpoints.capsules, id)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def info(), do: get(@endpoints.info)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def info(id), do: get(@endpoints.info, id)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def info_roadster(), do: get(@endpoints.info, "roadster")

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def info_history(), do: get(@endpoints.info, "history")

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def launches(), do: get(@endpoints.launches)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def launches(id), do: get(@endpoints.launches, id)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def launches_all(), do: get(@endpoints.launches, "all")

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def launches_next(), do: get(@endpoints.launches, "next")

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def launches_latest(), do: get(@endpoints.launches, "latest")

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def launches_upcoming(), do: get(@endpoints.launches, "upcoming")

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def launchpads(), do: get(@endpoints.launchpads)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def launchpads(id), do: get(@endpoints.launchpads, id)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def missions(), do: get(@endpoints.missions)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def missions(id), do: get(@endpoints.missions, id)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def part_capsules(), do: get(@endpoints.parts_caps)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def part_capsules(id), do: get(@endpoints.parts_caps, id)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def part_cores(), do: get(@endpoints.parts_cores)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def part_cores(id), do: get(@endpoints.parts_cores, id)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def payloads(), do: get(@endpoints.payloads)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def payloads(id), do: get(@endpoints.payloads, id)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def rockets(), do: get(@endpoints.rockets)

  @doc """
  Get a capsule information by id

  ## Examples

      iex> SpacexEx.capsules("dragon1")
      {200, %{active: true, crew_capacity: 0, description: "Dragon is a reusable ...", ...}}

      iex> SpacexEx.capsules("foo")
      {204, ""}

      iex> SpacexEx.capsules("dragon1")
      {:error, :econnrefused}
  """
  @spec capsules() :: result_t | no_return
  def rockets(id), do: get(@endpoints.rockets, id)

  defp get(endpoint), do: Client.get(endpoint)
  defp get(endpoint, id), do: endpoint |> Client.id_endpoint(id) |> Client.get()
end
