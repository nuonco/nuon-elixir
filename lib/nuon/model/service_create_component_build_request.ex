# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateComponentBuildRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :git_ref,
    :use_latest
  ]

  @type t :: %__MODULE__{
    :git_ref => String.t | nil,
    :use_latest => boolean() | nil
  }

  def decode(value) do
    value
  end
end
