# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Model.AppAwsAccount do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by_id,
    :iam_role_arn,
    :id,
    :region,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :iam_role_arn => String.t | nil,
    :id => String.t | nil,
    :region => String.t | nil,
    :updated_at => String.t | nil
  }

  def decode(value) do
    value
  end
end

