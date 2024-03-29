# NOTE: This file is auto generated by OpenAPI Generator 7.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateAppConfigRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :content,
    :format
  ]

  @type t :: %__MODULE__{
    :content => String.t,
    :format => Nuon.Model.AppAppConfigFmt.t
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:format, :struct, Nuon.Model.AppAppConfigFmt)
  end
end

