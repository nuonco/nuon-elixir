# NOTE: This file is auto generated by OpenAPI Generator 7.6.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAppSecret do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_id,
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :length,
    :name,
    :org_id,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :app_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppUserToken.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :length => integer() | nil,
    :name => String.t | nil,
    :org_id => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppUserToken)
  end
end

