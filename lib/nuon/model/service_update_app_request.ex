# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceUpdateAppRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :display_name,
    :name,
    :slack_webhook_url
  ]

  @type t :: %__MODULE__{
    :description => String.t | nil,
    :display_name => String.t | nil,
    :name => String.t | nil,
    :slack_webhook_url => String.t | nil
  }

  def decode(value) do
    value
  end
end

