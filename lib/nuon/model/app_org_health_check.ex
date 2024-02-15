# NOTE: This file is auto generated by OpenAPI Generator 7.4.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppOrgHealthCheck do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by_id,
    :id,
    :orgID,
    :status,
    :status_description,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :orgID => String.t | nil,
    :status => Nuon.Model.AppOrgHealthCheckStatus.t | nil,
    :status_description => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:status, :struct, Nuon.Model.AppOrgHealthCheckStatus)
  end
end

