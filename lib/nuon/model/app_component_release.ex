# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppComponentRelease do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :build_id,
    :created_at,
    :created_by,
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
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :release_steps => [Nuon.Model.AppComponentReleaseStep.t] | nil,
    :status => String.t | nil,
    :status_description => String.t | nil,
    :total_release_steps => integer() | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
     |> Deserializer.deserialize(:release_steps, :list, Nuon.Model.AppComponentReleaseStep)
  end
end

