# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Model.MetricsEvent do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :event
  ]

  @type t :: %__MODULE__{
    :event => NuonAPI.Model.StatsdEvent.t | nil
  }

  alias NuonAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:event, :struct, NuonAPI.Model.StatsdEvent)
  end
end

