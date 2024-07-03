# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateExternalImageComponentConfigRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :aws_ecr_image_config,
    :image_url,
    :tag
  ]

  @type t :: %__MODULE__{
    :aws_ecr_image_config => Nuon.Model.ServiceAwsEcrImageConfigRequest.t | nil,
    :image_url => String.t,
    :tag => String.t
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:aws_ecr_image_config, :struct, Nuon.Model.ServiceAwsEcrImageConfigRequest)
  end
end

