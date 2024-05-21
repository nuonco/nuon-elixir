# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAppSandboxConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_id,
    :artifacts,
    :cloud_platform,
    :connected_github_vcs_config,
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :org_id,
    :public_git_vcs_config,
    :sandbox_release,
    :sandbox_release_id,
    :terraform_version,
    :updated_at,
    :variables
  ]

  @type t :: %__MODULE__{
    :app_id => String.t | nil,
    :artifacts => Nuon.Model.AppAppSandboxConfigArtifacts.t | nil,
    :cloud_platform => Nuon.Model.AppCloudPlatform.t | nil,
    :connected_github_vcs_config => Nuon.Model.AppConnectedGithubVcsConfig.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppUserToken.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :org_id => String.t | nil,
    :public_git_vcs_config => Nuon.Model.AppPublicGitVcsConfig.t | nil,
    :sandbox_release => Nuon.Model.AppSandboxRelease.t | nil,
    :sandbox_release_id => String.t | nil,
    :terraform_version => String.t | nil,
    :updated_at => String.t | nil,
    :variables => %{optional(String.t) => String.t} | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:artifacts, :struct, Nuon.Model.AppAppSandboxConfigArtifacts)
     |> Deserializer.deserialize(:cloud_platform, :struct, Nuon.Model.AppCloudPlatform)
     |> Deserializer.deserialize(:connected_github_vcs_config, :struct, Nuon.Model.AppConnectedGithubVcsConfig)
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppUserToken)
     |> Deserializer.deserialize(:public_git_vcs_config, :struct, Nuon.Model.AppPublicGitVcsConfig)
     |> Deserializer.deserialize(:sandbox_release, :struct, Nuon.Model.AppSandboxRelease)
  end
end

