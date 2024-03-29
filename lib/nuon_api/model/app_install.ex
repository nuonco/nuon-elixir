# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Model.AppInstall do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_id,
    :app_sandbox_config,
    :aws_account,
    :created_at,
    :created_by_id,
    :id,
    :install_components,
    :install_inputs,
    :install_sandbox_runs,
    :name,
    :status,
    :status_description,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :app_id => String.t | nil,
    :app_sandbox_config => NuonAPI.Model.AppAppSandboxConfig.t | nil,
    :aws_account => NuonAPI.Model.AppAwsAccount.t | nil,
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :install_components => [NuonAPI.Model.AppInstallComponent.t] | nil,
    :install_inputs => [NuonAPI.Model.AppInstallInputs.t] | nil,
    :install_sandbox_runs => [NuonAPI.Model.AppInstallSandboxRun.t] | nil,
    :name => String.t | nil,
    :status => String.t | nil,
    :status_description => String.t | nil,
    :updated_at => String.t | nil
  }

  alias NuonAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:app_sandbox_config, :struct, NuonAPI.Model.AppAppSandboxConfig)
     |> Deserializer.deserialize(:aws_account, :struct, NuonAPI.Model.AppAwsAccount)
     |> Deserializer.deserialize(:install_components, :list, NuonAPI.Model.AppInstallComponent)
     |> Deserializer.deserialize(:install_inputs, :list, NuonAPI.Model.AppInstallInputs)
     |> Deserializer.deserialize(:install_sandbox_runs, :list, NuonAPI.Model.AppInstallSandboxRun)
  end
end

