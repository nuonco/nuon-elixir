# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAppSandboxConfigArtifacts do
  @moduledoc """
  Links are dynamically loaded using an after query
  """

  @derive Jason.Encoder
  defstruct [
    :cloudformation_stack_template,
    :deprovision_policy,
    :provision_policy,
    :trust_policy
  ]

  @type t :: %__MODULE__{
    :cloudformation_stack_template => String.t | nil,
    :deprovision_policy => String.t | nil,
    :provision_policy => String.t | nil,
    :trust_policy => String.t | nil
  }

  def decode(value) do
    value
  end
end

