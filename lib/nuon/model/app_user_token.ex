# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppUserToken do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by_id,
    :email,
    :expires_at,
    :id,
    :issued_at,
    :issuer,
    :subject,
    :token_type,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :email => String.t | nil,
    :expires_at => String.t | nil,
    :id => String.t | nil,
    :issued_at => String.t | nil,
    :issuer => String.t | nil,
    :subject => String.t | nil,
    :token_type => Nuon.Model.AppTokenType.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:token_type, :struct, Nuon.Model.AppTokenType)
  end
end

