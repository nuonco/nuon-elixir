# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.StderrErrResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :error,
    :user_error
  ]

  @type t :: %__MODULE__{
    :description => String.t | nil,
    :error => String.t | nil,
    :user_error => boolean() | nil
  }

  def decode(value) do
    value
  end
end

