# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.MetricsEvent do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :event
  ]

  @type t :: %__MODULE__{
    :event => Nuon.Model.StatsdEvent.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:event, :struct, Nuon.Model.StatsdEvent)
  end
end

