# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateInstallRequestAwsAccount do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :iam_role_arn,
    :region
  ]

  @type t :: %__MODULE__{
    :iam_role_arn => String.t,
    :region => String.t | nil
  }

  def decode(value) do
    value
  end
end

