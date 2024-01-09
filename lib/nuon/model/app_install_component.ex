# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppInstallComponent do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :component,
    :component_id,
    :created_at,
    :created_by_id,
    :id,
    :install_deploys,
    :install_id,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :component => Nuon.Model.AppComponent.t | nil,
    :component_id => String.t | nil,
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :install_deploys => [Nuon.Model.AppInstallDeploy.t] | nil,
    :install_id => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:component, :struct, Nuon.Model.AppComponent)
     |> Deserializer.deserialize(:install_deploys, :list, Nuon.Model.AppInstallDeploy)
  end
end
