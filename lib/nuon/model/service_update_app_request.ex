# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceUpdateAppRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :name
  ]

  @type t :: %__MODULE__{
    :description => String.t | nil,
    :name => String.t | nil
  }

  def decode(value) do
    value
  end
end

