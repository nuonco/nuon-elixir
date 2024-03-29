# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Model.ServiceCreateAppSandboxConfigRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :connected_github_vcs_config,
    :public_git_vcs_config,
    :sandbox_inputs,
    :sandbox_release_id,
    :terraform_version
  ]

  @type t :: %__MODULE__{
    :connected_github_vcs_config => NuonAPI.Model.ServiceConnectedGithubVcsSandboxConfigRequest.t | nil,
    :public_git_vcs_config => NuonAPI.Model.ServicePublicGitVcsSandboxConfigRequest.t | nil,
    :sandbox_inputs => %{optional(String.t) => String.t},
    :sandbox_release_id => String.t | nil,
    :terraform_version => String.t
  }

  alias NuonAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:connected_github_vcs_config, :struct, NuonAPI.Model.ServiceConnectedGithubVcsSandboxConfigRequest)
     |> Deserializer.deserialize(:public_git_vcs_config, :struct, NuonAPI.Model.ServicePublicGitVcsSandboxConfigRequest)
  end
end

