# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAppSandboxConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_id,
    :artifacts,
    :aws_delegation_config,
    :aws_region_type,
    :cloud_platform,
    :connected_github_vcs_config,
    :created_at,
    :created_by,
    :created_by_id,
    :id,
    :org_id,
    :public_git_vcs_config,
    :terraform_version,
    :updated_at,
    :variables
  ]

  @type t :: %__MODULE__{
    :app_id => String.t | nil,
    :artifacts => Nuon.Model.AppAppSandboxConfigArtifacts.t | nil,
    :aws_delegation_config => Nuon.Model.AppAppAwsDelegationConfig.t | nil,
    :aws_region_type => String.t | nil,
    :cloud_platform => String.t | nil,
    :connected_github_vcs_config => Nuon.Model.AppConnectedGithubVcsConfig.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :org_id => String.t | nil,
    :public_git_vcs_config => Nuon.Model.AppPublicGitVcsConfig.t | nil,
    :terraform_version => String.t | nil,
    :updated_at => String.t | nil,
    :variables => %{optional(String.t) => String.t} | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:artifacts, :struct, Nuon.Model.AppAppSandboxConfigArtifacts)
     |> Deserializer.deserialize(:aws_delegation_config, :struct, Nuon.Model.AppAppAwsDelegationConfig)
     |> Deserializer.deserialize(:connected_github_vcs_config, :struct, Nuon.Model.AppConnectedGithubVcsConfig)
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
     |> Deserializer.deserialize(:public_git_vcs_config, :struct, Nuon.Model.AppPublicGitVcsConfig)
  end
end

