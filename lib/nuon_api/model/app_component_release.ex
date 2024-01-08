# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Model.AppComponentRelease do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :build_id,
    :created_at,
    :created_by_id,
    :id,
    :release_steps,
    :status,
    :status_description,
    :total_release_steps,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :build_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :release_steps => [NuonAPI.Model.AppComponentReleaseStep.t] | nil,
    :status => String.t | nil,
    :status_description => String.t | nil,
    :total_release_steps => integer() | nil,
    :updated_at => String.t | nil
  }

  alias NuonAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:release_steps, :list, NuonAPI.Model.AppComponentReleaseStep)
  end
end

