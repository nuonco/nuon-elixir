# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppRunnerJobExecutionResult do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by,
    :created_by_id,
    :error_code,
    :error_metadata,
    :id,
    :org,
    :org_id,
    :runner_job_execution_id,
    :success,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :error_code => integer() | nil,
    :error_metadata => %{optional(String.t) => String.t} | nil,
    :id => String.t | nil,
    :org => Nuon.Model.AppOrg.t | nil,
    :org_id => String.t | nil,
    :runner_job_execution_id => String.t | nil,
    :success => boolean() | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
     |> Deserializer.deserialize(:org, :struct, Nuon.Model.AppOrg)
  end
end

