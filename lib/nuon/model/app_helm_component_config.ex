# NOTE: This file is auto generated by OpenAPI Generator 7.4.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppHelmComponentConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :chart_name,
    :component_config_connection_id,
    :connected_github_vcs_config,
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :public_git_vcs_config,
    :updated_at,
    :values
  ]

  @type t :: %__MODULE__{
    :chart_name => String.t | nil,
    :component_config_connection_id => String.t | nil,
    :connected_github_vcs_config => Nuon.Model.AppConnectedGithubVcsConfig.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppUserToken.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :public_git_vcs_config => Nuon.Model.AppPublicGitVcsConfig.t | nil,
    :updated_at => String.t | nil,
    :values => %{optional(String.t) => String.t} | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:connected_github_vcs_config, :struct, Nuon.Model.AppConnectedGithubVcsConfig)
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppUserToken)
     |> Deserializer.deserialize(:public_git_vcs_config, :struct, Nuon.Model.AppPublicGitVcsConfig)
  end
end

