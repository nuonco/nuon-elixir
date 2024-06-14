# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAzureAccount do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :install,
    :location,
    :service_principal_app_id,
    :service_principal_password,
    :subscription_id,
    :subscription_tenant_id,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :install => Nuon.Model.AppInstall.t | nil,
    :location => String.t | nil,
    :service_principal_app_id => String.t | nil,
    :service_principal_password => String.t | nil,
    :subscription_id => String.t | nil,
    :subscription_tenant_id => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
     |> Deserializer.deserialize(:install, :struct, Nuon.Model.AppInstall)
  end
end

