# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateTerraformModuleComponentConfigRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :connected_github_vcs_config,
    :env_vars,
    :public_git_vcs_config,
    :variables,
    :version
  ]

  @type t :: %__MODULE__{
    :connected_github_vcs_config => Nuon.Model.ServiceConnectedGithubVcsConfigRequest.t | nil,
    :env_vars => %{optional(String.t) => String.t},
    :public_git_vcs_config => Nuon.Model.ServicePublicGitVcsConfigRequest.t | nil,
    :variables => %{optional(String.t) => String.t},
    :version => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:connected_github_vcs_config, :struct, Nuon.Model.ServiceConnectedGithubVcsConfigRequest)
     |> Deserializer.deserialize(:public_git_vcs_config, :struct, Nuon.Model.ServicePublicGitVcsConfigRequest)
  end
end

