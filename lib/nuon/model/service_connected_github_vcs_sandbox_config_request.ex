# NOTE: This file is auto generated by OpenAPI Generator 7.4.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceConnectedGithubVcsSandboxConfigRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :branch,
    :directory,
    :gitRef,
    :repo
  ]

  @type t :: %__MODULE__{
    :branch => String.t | nil,
    :directory => String.t,
    :gitRef => String.t | nil,
    :repo => String.t
  }

  def decode(value) do
    value
  end
end

