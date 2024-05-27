# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppInstallEvent do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :install_id,
    :operation,
    :operation_name,
    :operation_status,
    :org_id,
    :payload,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppUserToken.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :install_id => String.t | nil,
    :operation => String.t | nil,
    :operation_name => String.t | nil,
    :operation_status => Nuon.Model.AppOperationStatus.t | nil,
    :org_id => String.t | nil,
    :payload => %{optional(String.t) => String.t} | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppUserToken)
     |> Deserializer.deserialize(:operation_status, :struct, Nuon.Model.AppOperationStatus)
  end
end

