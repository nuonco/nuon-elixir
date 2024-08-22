# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceUpdateAppConfigRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :state,
    :status,
    :status_description
  ]

  @type t :: %__MODULE__{
    :state => String.t | nil,
    :status => Nuon.Model.AppAppConfigStatus.t | nil,
    :status_description => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:status, :struct, Nuon.Model.AppAppConfigStatus)
  end
end

