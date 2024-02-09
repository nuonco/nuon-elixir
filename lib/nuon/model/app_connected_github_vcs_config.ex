# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppConnectedGithubVcsConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :branch,
    :component_config_id,
    :component_config_type,
    :created_at,
    :created_by_id,
    :directory,
    :id,
    :repo,
    :repo_name,
    :repo_owner,
    :updated_at,
    :vcs_connection,
    :vcs_connection_id
  ]

  @type t :: %__MODULE__{
    :branch => String.t | nil,
    :component_config_id => String.t | nil,
    :component_config_type => String.t | nil,
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :directory => String.t | nil,
    :id => String.t | nil,
    :repo => String.t | nil,
    :repo_name => String.t | nil,
    :repo_owner => String.t | nil,
    :updated_at => String.t | nil,
    :vcs_connection => Nuon.Model.AppVcsConnection.t | nil,
    :vcs_connection_id => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:vcs_connection, :struct, Nuon.Model.AppVcsConnection)
  end
end

