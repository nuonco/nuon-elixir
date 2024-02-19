# NOTE: This file is auto generated by OpenAPI Generator 7.4.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppPublicGitVcsConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :branch,
    :component_config_id,
    :component_config_type,
    :created_at,
    :created_by,
    :created_by_id,
    :directory,
    :id,
    :repo,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :branch => String.t | nil,
    :component_config_id => String.t | nil,
    :component_config_type => String.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppUserToken.t | nil,
    :created_by_id => String.t | nil,
    :directory => String.t | nil,
    :id => String.t | nil,
    :repo => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppUserToken)
  end
end

