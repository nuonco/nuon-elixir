# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppInstallerMetadata do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :community_url,
    :copyright_markdown,
    :created_at,
    :created_by,
    :created_by_id,
    :demo_url,
    :description,
    :documentation_url,
    :favicon_url,
    :footer_markdown,
    :formatted_demo_url,
    :github_url,
    :homepage_url,
    :id,
    :installer_id,
    :logo_url,
    :name,
    :og_image_url,
    :post_install_markdown,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :community_url => String.t | nil,
    :copyright_markdown => String.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :demo_url => String.t | nil,
    :description => String.t | nil,
    :documentation_url => String.t | nil,
    :favicon_url => String.t | nil,
    :footer_markdown => String.t | nil,
    :formatted_demo_url => String.t | nil,
    :github_url => String.t | nil,
    :homepage_url => String.t | nil,
    :id => String.t | nil,
    :installer_id => String.t | nil,
    :logo_url => String.t | nil,
    :name => String.t | nil,
    :og_image_url => String.t | nil,
    :post_install_markdown => String.t | nil,
    :updated_at => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
  end
end

