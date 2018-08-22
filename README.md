<div align="center">

# Elixir SpaceX API Wrapper 
[![GitHub release](https://img.shields.io/github/release/crunchysoul/spacex_ex.svg)](https://github.com/crunchysoul/spacex_ex/releases)
[![GitHub issues](https://img.shields.io/github/issues/crunchysoul/spacex_ex.svg)](https://github.com/crunchysoul/spacex_ex/issues)
[![GitHub stars](https://img.shields.io/github/stars/crunchysoul/spacex_ex.svg)](https://github.com/crunchysoul/spacex_ex/stargazers)
[![GitHub license](https://img.shields.io/github/license/crunchysoul/spacex_ex.svg)](https://github.com/crunchysoul/spacex_ex)

### A simple API wrapper for [r-spacex/SpaceX-API](https://github.com/r-spacex/SpaceX-API) in Elixir!

<br><br>

</div>

## Documentation
See the [Wiki](https://github.com/crunchysoul/spacex_ex/wiki) for full wrapper documentation.

Documentation for the API can be found [here](https://github.com/r-spacex/SpaceX-API/wiki).

## Installation
[available in Hex](https://hex.pm/docs/spacex_ex), the package can be installed
by adding `spacex_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:spacex_ex, "~> 1.0.0"}
  ]
end
```

## Basic Usage
```elixir
# List of all SpaceX capsule information
{200, capsules} = SpaceX.capsules

# List of past SpaceX launch information
{200, past_launches} = SpaceX.launches

# List of all SpaceX launch information
{200, all_launches} = SpaceX.launches_all

# Next SpaceX launch information
{200, next_launch} = SpaceX.launches_next

# Latest SpaceX launch information
{200, latest_launch} = SpaceX.launches_latest

# Upcoming SpaceX launch information
{200, upcoming_launch} = SpaceX.launches_upcoming

# List of all SpaceX launchpad information
{200, launchpads} = SpaceX.launchpads

# List of all SpaceX mission information
{200, missions} = SpaceX.missions

# List of all SpaceX capsule part information
{200, part_capsules} = SpaceX.part_capsules

# List of all SpaceX core part information
{200, part_cores} = SpaceX.part_cores

# List of all SpaceX payload information
{200, payloads} = SpaceX.payloads

# List of all SpaceX rocket information
{200, rockets} = SpaceX.rockets

# Get SpaceX company information
{200, spacex_info} = SpaceX.info

# Get the SpaceX Roadster information
{200, spacex_roadster} = SpaceX.info_roadster

# Get SpaceX history information
{200, spacex_history} = SpaceX.info_history 

# Get a SpaceX capsule information by id
{200, capsule} = SpaceX.capsules("dragon1")

# Get a SpaceX launchpad information by id
{200, launchpad} = SpaceX.launchpads("ksc_lc_39a")

# Get a SpaceX missions information by id
# Cautious: return mission is in list format!
{200, [mission]} = SpaceX.missions("6C42550")

# Get a SpaceX capsule part information by id
{200, part_capsule} = SpaceX.part_capsules("C111")

# Get a SpaceX capsule core information by id
{200, part_core} = SpaceX.part_cores("B1029")

# Get a SpaceX payloads information by id
{200, payload} = SpaceX.payloads("SpaceX CRS-11")

# Get a SpaceX rockets information by id
{200, rocket} = SpaceX.rockets("bfr")

# Get attributes of a capsule
capsule.name
>>> "Dragon 1"

capsules.crew_capacity
>>> 0

capsules.description
>>> "Dragon is a reusable spacecraft developed by SpaceX, ..."


```
