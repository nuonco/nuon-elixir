# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAwsecrImageConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :aws_region,
    :component_config_id,
    :component_config_type,
    :created_at,
    :created_by,
    :created_by_id,
    :iam_role_arn,
    :id,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :aws_region => String.t | nil,
    :component_config_id => String.t | nil,
    :component_config_type => String.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :iam_role_arn => String.t | nil,
    :id => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
  end
end

