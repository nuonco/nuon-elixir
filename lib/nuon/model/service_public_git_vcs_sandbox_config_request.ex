# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServicePublicGitVcsSandboxConfigRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :branch,
    :directory,
    :repo
  ]

  @type t :: %__MODULE__{
    :branch => String.t,
    :directory => String.t,
    :repo => String.t
  }

  def decode(value) do
    value
  end
end

