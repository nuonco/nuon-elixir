# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.StatsdEvent do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :aggregationKey,
    :alertType,
    :hostname,
    :priority,
    :sourceTypeName,
    :tags,
    :text,
    :timestamp,
    :title
  ]

  @type t :: %__MODULE__{
    :aggregationKey => String.t | nil,
    :alertType => Nuon.Model.StatsdEventAlertType.t | nil,
    :hostname => String.t | nil,
    :priority => Nuon.Model.StatsdEventPriority.t | nil,
    :sourceTypeName => String.t | nil,
    :tags => [String.t] | nil,
    :text => String.t | nil,
    :timestamp => String.t | nil,
    :title => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:alertType, :struct, Nuon.Model.StatsdEventAlertType)
     |> Deserializer.deserialize(:priority, :struct, Nuon.Model.StatsdEventPriority)
  end
end

