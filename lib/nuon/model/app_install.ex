# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppInstall do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_id,
    :app_runner_config,
    :app_sandbox_config,
    :aws_account,
    :azure_account,
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :install_components,
    :install_events,
    :install_inputs,
    :install_sandbox_runs,
    :name,
    :status,
    :status_description,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :app_id => String.t | nil,
    :app_runner_config => Nuon.Model.AppAppRunnerConfig.t | nil,
    :app_sandbox_config => Nuon.Model.AppAppSandboxConfig.t | nil,
    :aws_account => Nuon.Model.AppAwsAccount.t | nil,
    :azure_account => Nuon.Model.AppAzureAccount.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppUserToken.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :install_components => [Nuon.Model.AppInstallComponent.t] | nil,
    :install_events => [Nuon.Model.AppInstallEvent.t] | nil,
    :install_inputs => [Nuon.Model.AppInstallInputs.t] | nil,
    :install_sandbox_runs => [Nuon.Model.AppInstallSandboxRun.t] | nil,
    :name => String.t | nil,
    :status => String.t | nil,
    :status_description => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:app_runner_config, :struct, Nuon.Model.AppAppRunnerConfig)
     |> Deserializer.deserialize(:app_sandbox_config, :struct, Nuon.Model.AppAppSandboxConfig)
     |> Deserializer.deserialize(:aws_account, :struct, Nuon.Model.AppAwsAccount)
     |> Deserializer.deserialize(:azure_account, :struct, Nuon.Model.AppAzureAccount)
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppUserToken)
     |> Deserializer.deserialize(:install_components, :list, Nuon.Model.AppInstallComponent)
     |> Deserializer.deserialize(:install_events, :list, Nuon.Model.AppInstallEvent)
     |> Deserializer.deserialize(:install_inputs, :list, Nuon.Model.AppInstallInputs)
     |> Deserializer.deserialize(:install_sandbox_runs, :list, Nuon.Model.AppInstallSandboxRun)
  end
end

