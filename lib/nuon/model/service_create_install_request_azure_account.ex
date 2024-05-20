# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateInstallRequestAzureAccount do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :location,
    :service_principal_app_id,
    :service_principal_password,
    :subscription_id,
    :subscription_tenant_id
  ]

  @type t :: %__MODULE__{
    :location => String.t | nil,
    :service_principal_app_id => String.t | nil,
    :service_principal_password => String.t | nil,
    :subscription_id => String.t | nil,
    :subscription_tenant_id => String.t | nil
  }

  def decode(value) do
    value
  end
end

