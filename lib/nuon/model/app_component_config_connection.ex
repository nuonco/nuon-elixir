# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppComponentConfigConnection do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :component_id,
    :created_at,
    :created_by,
    :created_by_id,
    :docker_build,
    :external_image,
    :helm,
    :id,
    :job,
    :terraform_module,
    :updated_at,
    :version
  ]

  @type t :: %__MODULE__{
    :component_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :docker_build => Nuon.Model.AppDockerBuildComponentConfig.t | nil,
    :external_image => Nuon.Model.AppExternalImageComponentConfig.t | nil,
    :helm => Nuon.Model.AppHelmComponentConfig.t | nil,
    :id => String.t | nil,
    :job => Nuon.Model.AppJobComponentConfig.t | nil,
    :terraform_module => Nuon.Model.AppTerraformModuleComponentConfig.t | nil,
    :updated_at => String.t | nil,
    :version => integer() | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
     |> Deserializer.deserialize(:docker_build, :struct, Nuon.Model.AppDockerBuildComponentConfig)
     |> Deserializer.deserialize(:external_image, :struct, Nuon.Model.AppExternalImageComponentConfig)
     |> Deserializer.deserialize(:helm, :struct, Nuon.Model.AppHelmComponentConfig)
     |> Deserializer.deserialize(:job, :struct, Nuon.Model.AppJobComponentConfig)
     |> Deserializer.deserialize(:terraform_module, :struct, Nuon.Model.AppTerraformModuleComponentConfig)
  end
end

