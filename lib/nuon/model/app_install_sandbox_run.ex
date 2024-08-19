# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppInstallSandboxRun do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_sandbox_config,
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :install_id,
    :run_type,
    :status,
    :status_description,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :app_sandbox_config => Nuon.Model.AppAppSandboxConfig.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :install_id => String.t | nil,
    :run_type => Nuon.Model.AppSandboxRunType.t | nil,
    :status => String.t | nil,
    :status_description => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:app_sandbox_config, :struct, Nuon.Model.AppAppSandboxConfig)
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
     |> Deserializer.deserialize(:run_type, :struct, Nuon.Model.AppSandboxRunType)
  end
end

