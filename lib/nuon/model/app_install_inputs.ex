# NOTE: This file is auto generated by OpenAPI Generator 7.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppInstallInputs do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_input_config_id,
    :created_at,
    :created_by,
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
    :created_by => Nuon.Model.AppUserToken.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :install_id => String.t | nil,
    :org_id => String.t | nil,
    :updated_at => String.t | nil,
    :values => %{optional(String.t) => String.t} | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppUserToken)
  end
end

