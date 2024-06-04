# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceAppInputRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :default,
    :description,
    :display_name,
    :group,
    :required,
    :sensitive
  ]

  @type t :: %__MODULE__{
    :default => String.t | nil,
    :description => String.t,
    :display_name => String.t,
    :group => String.t,
    :required => boolean() | nil,
    :sensitive => boolean() | nil
  }

  def decode(value) do
    value
  end
end

