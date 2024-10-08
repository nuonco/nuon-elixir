# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppJobComponentConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :args,
    :cmd,
    :component_config_connection_id,
    :created_at,
    :created_by,
    :created_by_id,
    :env_vars,
    :id,
    :image_url,
    :tag,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :args => [String.t] | nil,
    :cmd => [String.t] | nil,
    :component_config_connection_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :env_vars => %{optional(String.t) => String.t} | nil,
    :id => String.t | nil,
    :image_url => String.t | nil,
    :tag => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
  end
end

