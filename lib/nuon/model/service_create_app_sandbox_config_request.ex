# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateAppSandboxConfigRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :aws_delegation_iam_role_arn,
    :connected_github_vcs_config,
    :public_git_vcs_config,
    :sandbox_inputs,
    :terraform_version
  ]

  @type t :: %__MODULE__{
    :aws_delegation_iam_role_arn => String.t | nil,
    :connected_github_vcs_config => Nuon.Model.ServiceConnectedGithubVcsSandboxConfigRequest.t | nil,
    :public_git_vcs_config => Nuon.Model.ServicePublicGitVcsSandboxConfigRequest.t | nil,
    :sandbox_inputs => %{optional(String.t) => String.t},
    :terraform_version => String.t
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:connected_github_vcs_config, :struct, Nuon.Model.ServiceConnectedGithubVcsSandboxConfigRequest)
     |> Deserializer.deserialize(:public_git_vcs_config, :struct, Nuon.Model.ServicePublicGitVcsSandboxConfigRequest)
  end
end

