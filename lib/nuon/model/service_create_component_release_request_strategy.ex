# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateComponentReleaseRequestStrategy do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :delay,
    :installs_per_step
  ]

  @type t :: %__MODULE__{
    :delay => String.t | nil,
    :installs_per_step => integer() | nil
  }

  def decode(value) do
    value
  end
end

