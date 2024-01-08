# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Model.AppApp do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by_id,
    :id,
    :name,
    :org_id,
    :status,
    :status_description,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :name => String.t | nil,
    :org_id => String.t | nil,
    :status => String.t | nil,
    :status_description => String.t | nil,
    :updated_at => String.t | nil
  }

  def decode(value) do
    value
  end
end

