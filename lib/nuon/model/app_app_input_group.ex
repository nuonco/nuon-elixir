# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAppInputGroup do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_input_id,
    :app_inputs,
    :created_at,
    :created_by,
    :created_by_id,
    :description,
    :display_name,
    :id,
    :name,
    :org_id,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :app_input_id => String.t | nil,
    :app_inputs => [Nuon.Model.AppAppInput.t] | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :description => String.t | nil,
    :display_name => String.t | nil,
    :id => String.t | nil,
    :name => String.t | nil,
    :org_id => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:app_inputs, :list, Nuon.Model.AppAppInput)
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
  end
end

