# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceAppGroupRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :display_name
  ]

  @type t :: %__MODULE__{
    :description => String.t,
    :display_name => String.t
  }

  def decode(value) do
    value
  end
end

