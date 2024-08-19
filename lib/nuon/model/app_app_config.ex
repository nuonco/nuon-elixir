# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAppConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_id,
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :org_id,
    :state,
    :status,
    :status_description,
    :updated_at,
    :version
  ]

  @type t :: %__MODULE__{
    :app_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :org_id => String.t | nil,
    :state => String.t | nil,
    :status => Nuon.Model.AppAppConfigStatus.t | nil,
    :status_description => String.t | nil,
    :updated_at => String.t | nil,
    :version => integer() | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
     |> Deserializer.deserialize(:status, :struct, Nuon.Model.AppAppConfigStatus)
  end
end

