# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceUpdateInstallerRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_ids,
    :metadata,
    :name
  ]

  @type t :: %__MODULE__{
    :app_ids => [String.t],
    :metadata => Nuon.Model.ServiceCreateInstallerRequestMetadata.t | nil,
    :name => String.t
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:metadata, :struct, Nuon.Model.ServiceCreateInstallerRequestMetadata)
  end
end

