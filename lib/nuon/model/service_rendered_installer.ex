# NOTE: This file is auto generated by OpenAPI Generator 7.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceRenderedInstaller do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app,
    :app_inputs,
    :app_sandbox,
    :metadata,
    :sandbox_mode
  ]

  @type t :: %__MODULE__{
    :app => Nuon.Model.AppApp.t | nil,
    :app_inputs => Nuon.Model.AppAppInputConfig.t | nil,
    :app_sandbox => Nuon.Model.AppAppSandboxConfig.t | nil,
    :metadata => Nuon.Model.AppAppInstallerMetadata.t | nil,
    :sandbox_mode => boolean() | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:app, :struct, Nuon.Model.AppApp)
     |> Deserializer.deserialize(:app_inputs, :struct, Nuon.Model.AppAppInputConfig)
     |> Deserializer.deserialize(:app_sandbox, :struct, Nuon.Model.AppAppSandboxConfig)
     |> Deserializer.deserialize(:metadata, :struct, Nuon.Model.AppAppInstallerMetadata)
  end
end

