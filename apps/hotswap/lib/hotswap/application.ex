defmodule Hotswap.Application do
  @moduledoc """
  The Hotswap Application Service.

  The hotswap system business domain lives in this application.

  Exposes API to clients such as the `HotswapWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      
    ], strategy: :one_for_one, name: Hotswap.Supervisor)
  end
end
