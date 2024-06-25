# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceUpdateInstallerRequestMetadata do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :community_url,
    :copyright_markdown,
    :demo_url,
    :description,
    :documentation_url,
    :favicon_url,
    :footer_markdown,
    :github_url,
    :homepage_url,
    :logo_url,
    :post_install_markdown
  ]

  @type t :: %__MODULE__{
    :community_url => String.t,
    :copyright_markdown => String.t | nil,
    :demo_url => String.t | nil,
    :description => String.t,
    :documentation_url => String.t,
    :favicon_url => String.t | nil,
    :footer_markdown => String.t | nil,
    :github_url => String.t,
    :homepage_url => String.t,
    :logo_url => String.t,
    :post_install_markdown => String.t | nil
  }

  def decode(value) do
    value
  end
end

