# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppExternalImageComponentConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :aws_ecr_image_config,
    :component_config_connection_id,
    :created_at,
    :created_by_id,
    :id,
    :image_url,
    :tag,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :aws_ecr_image_config => Nuon.Model.AppAwsecrImageConfig.t | nil,
    :component_config_connection_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :image_url => String.t | nil,
    :tag => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:aws_ecr_image_config, :struct, Nuon.Model.AppAwsecrImageConfig)
  end
end

