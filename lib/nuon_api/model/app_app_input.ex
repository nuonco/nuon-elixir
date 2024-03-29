# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Model.AppAppInput do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_input_id,
    :created_at,
    :created_by_id,
    :default,
    :description,
    :id,
    :name,
    :org_id,
    :required,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :app_input_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :default => String.t | nil,
    :description => String.t | nil,
    :id => String.t | nil,
    :name => String.t | nil,
    :org_id => String.t | nil,
    :required => boolean() | nil,
    :updated_at => String.t | nil
  }

  def decode(value) do
    value
  end
end

