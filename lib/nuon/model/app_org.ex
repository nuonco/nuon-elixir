# NOTE: This file is auto generated by OpenAPI Generator 7.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppOrg do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by,
    :created_by_id,
    :custom_cert,
    :health_checks,
    :id,
    :latest_health_check,
    :name,
    :sandbox_mode,
    :status,
    :status_description,
    :updated_at,
    :users,
    :vcs_connections
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppUserToken.t | nil,
    :created_by_id => String.t | nil,
    :custom_cert => boolean() | nil,
    :health_checks => [Nuon.Model.AppOrgHealthCheck.t] | nil,
    :id => String.t | nil,
    :latest_health_check => Nuon.Model.AppOrgHealthCheck.t | nil,
    :name => String.t | nil,
    :sandbox_mode => boolean() | nil,
    :status => String.t | nil,
    :status_description => String.t | nil,
    :updated_at => String.t | nil,
    :users => [Nuon.Model.AppUserOrg.t] | nil,
    :vcs_connections => [Nuon.Model.AppVcsConnection.t] | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppUserToken)
     |> Deserializer.deserialize(:health_checks, :list, Nuon.Model.AppOrgHealthCheck)
     |> Deserializer.deserialize(:latest_health_check, :struct, Nuon.Model.AppOrgHealthCheck)
     |> Deserializer.deserialize(:users, :list, Nuon.Model.AppUserOrg)
     |> Deserializer.deserialize(:vcs_connections, :list, Nuon.Model.AppVcsConnection)
  end
end

