# NOTE: This file is auto generated by OpenAPI Generator 7.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateAppInstallerRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_id,
    :description,
    :links,
    :name,
    :post_install_markdown,
    :slug
  ]

  @type t :: %__MODULE__{
    :app_id => String.t,
    :description => String.t,
    :links => Nuon.Model.ServiceCreateAppInstallerRequestLinks.t | nil,
    :name => String.t,
    :post_install_markdown => String.t | nil,
    :slug => String.t
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:links, :struct, Nuon.Model.ServiceCreateAppInstallerRequestLinks)
  end
end

