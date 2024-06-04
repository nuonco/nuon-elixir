# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAppInputConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_id,
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :input_groups,
    :inputs,
    :install_inputs,
    :org_id,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :app_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppUserToken.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :input_groups => [Nuon.Model.AppAppInputGroup.t] | nil,
    :inputs => [Nuon.Model.AppAppInput.t] | nil,
    :install_inputs => [Nuon.Model.AppInstallInputs.t] | nil,
    :org_id => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppUserToken)
     |> Deserializer.deserialize(:input_groups, :list, Nuon.Model.AppAppInputGroup)
     |> Deserializer.deserialize(:inputs, :list, Nuon.Model.AppAppInput)
     |> Deserializer.deserialize(:install_inputs, :list, Nuon.Model.AppInstallInputs)
  end
end

