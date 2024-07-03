# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServicePublishMetricInput do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :decr,
    :event,
    :incr,
    :timing
  ]

  @type t :: %__MODULE__{
    :decr => Nuon.Model.MetricsDecr.t | nil,
    :event => Nuon.Model.MetricsEvent.t | nil,
    :incr => Nuon.Model.MetricsIncr.t | nil,
    :timing => Nuon.Model.MetricsTiming.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:decr, :struct, Nuon.Model.MetricsDecr)
     |> Deserializer.deserialize(:event, :struct, Nuon.Model.MetricsEvent)
     |> Deserializer.deserialize(:incr, :struct, Nuon.Model.MetricsIncr)
     |> Deserializer.deserialize(:timing, :struct, Nuon.Model.MetricsTiming)
  end
end

