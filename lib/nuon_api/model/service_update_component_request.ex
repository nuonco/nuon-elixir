# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Model.ServiceUpdateComponentRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :dependencies,
    :name
  ]

  @type t :: %__MODULE__{
    :dependencies => [String.t] | nil,
    :name => String.t
  }

  def decode(value) do
    value
  end
end

