# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppVcsConnectionCommit do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :author_email,
    :author_name,
    :component_config_connection_id,
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :message,
    :sha,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :author_email => String.t | nil,
    :author_name => String.t | nil,
    :component_config_connection_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :message => String.t | nil,
    :sha => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
  end
end

