# NOTE: This file is auto generated by OpenAPI Generator 7.6.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.MetricsDecr do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :tags
  ]

  @type t :: %__MODULE__{
    :name => String.t | nil,
    :tags => [String.t] | nil
  }

  def decode(value) do
    value
  end
end

