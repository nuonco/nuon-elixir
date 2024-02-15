# NOTE: This file is auto generated by OpenAPI Generator 7.4.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppInstallInputs do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_input_config_id,
    :created_at,
    :created_by_id,
    :id,
    :install_id,
    :org_id,
    :updated_at,
    :values
  ]

  @type t :: %__MODULE__{
    :app_input_config_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :install_id => String.t | nil,
    :org_id => String.t | nil,
    :updated_at => String.t | nil,
    :values => %{optional(String.t) => String.t} | nil
  }

  def decode(value) do
    value
  end
end

