# NOTE: This file is auto generated by OpenAPI Generator 7.4.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCliConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :auth_audience,
    :auth_client_id,
    :auth_domain
  ]

  @type t :: %__MODULE__{
    :auth_audience => String.t | nil,
    :auth_client_id => String.t | nil,
    :auth_domain => String.t | nil
  }

  def decode(value) do
    value
  end
end

