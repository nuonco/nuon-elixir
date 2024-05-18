# NOTE: This file is auto generated by OpenAPI Generator 7.6.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppApp do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :cloud_platform,
    :created_at,
    :created_by,
    :created_by_id,
    :description,
    :id,
    :input_config,
    :name,
    :org_id,
    :runner_config,
    :sandbox_config,
    :status,
    :status_description,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :cloud_platform => Nuon.Model.AppCloudPlatform.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppUserToken.t | nil,
    :created_by_id => String.t | nil,
    :description => String.t | nil,
    :id => String.t | nil,
    :input_config => Nuon.Model.AppAppInputConfig.t | nil,
    :name => String.t | nil,
    :org_id => String.t | nil,
    :runner_config => Nuon.Model.AppAppRunnerConfig.t | nil,
    :sandbox_config => Nuon.Model.AppAppSandboxConfig.t | nil,
    :status => String.t | nil,
    :status_description => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:cloud_platform, :struct, Nuon.Model.AppCloudPlatform)
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppUserToken)
     |> Deserializer.deserialize(:input_config, :struct, Nuon.Model.AppAppInputConfig)
     |> Deserializer.deserialize(:runner_config, :struct, Nuon.Model.AppAppRunnerConfig)
     |> Deserializer.deserialize(:sandbox_config, :struct, Nuon.Model.AppAppSandboxConfig)
  end
end

