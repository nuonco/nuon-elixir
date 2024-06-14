# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppOrgInvite do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by,
    :created_by_id,
    :email,
    :id,
    :orgID,
    :role_type,
    :status,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :email => String.t | nil,
    :id => String.t | nil,
    :orgID => String.t | nil,
    :role_type => Nuon.Model.AppRoleType.t | nil,
    :status => Nuon.Model.AppOrgInviteStatus.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
     |> Deserializer.deserialize(:role_type, :struct, Nuon.Model.AppRoleType)
     |> Deserializer.deserialize(:status, :struct, Nuon.Model.AppOrgInviteStatus)
  end
end

