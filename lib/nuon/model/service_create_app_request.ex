# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateAppRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :name
  ]

  @type t :: %__MODULE__{
    :description => String.t | nil,
    :name => String.t
  }

  def decode(value) do
    value
  end
end

