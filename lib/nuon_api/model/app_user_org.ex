# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Model.AppUserOrg do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by_id,
    :id,
    :orgID,
    :updated_at,
    :userID
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :orgID => String.t | nil,
    :updated_at => String.t | nil,
    :userID => String.t | nil
  }

  def decode(value) do
    value
  end
end

