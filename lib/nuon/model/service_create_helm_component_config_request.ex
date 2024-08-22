# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateHelmComponentConfigRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :chart_name,
    :connected_github_vcs_config,
    :public_git_vcs_config,
    :values,
    :values_files
  ]

  @type t :: %__MODULE__{
    :chart_name => String.t,
    :connected_github_vcs_config => Nuon.Model.ServiceConnectedGithubVcsConfigRequest.t | nil,
    :public_git_vcs_config => Nuon.Model.ServicePublicGitVcsConfigRequest.t | nil,
    :values => %{optional(String.t) => String.t},
    :values_files => [String.t] | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:connected_github_vcs_config, :struct, Nuon.Model.ServiceConnectedGithubVcsConfigRequest)
     |> Deserializer.deserialize(:public_git_vcs_config, :struct, Nuon.Model.ServicePublicGitVcsConfigRequest)
  end
end

