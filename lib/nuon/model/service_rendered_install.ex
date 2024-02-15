# NOTE: This file is auto generated by OpenAPI Generator 7.4.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceRenderedInstall do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :install,
    :installer,
    :installer_content
  ]

  @type t :: %__MODULE__{
    :install => Nuon.Model.AppInstall.t | nil,
    :installer => Nuon.Model.ServiceRenderedInstaller.t | nil,
    :installer_content => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:install, :struct, Nuon.Model.AppInstall)
     |> Deserializer.deserialize(:installer, :struct, Nuon.Model.ServiceRenderedInstaller)
  end
end

