# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAppInstallerMetadata do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_installer_id,
    :community_url,
    :created_at,
    :created_by_id,
    :demo_url,
    :description,
    :documentation_url,
    :github_url,
    :homepage_url,
    :id,
    :logo_url,
    :name,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :app_installer_id => String.t | nil,
    :community_url => String.t | nil,
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :demo_url => String.t | nil,
    :description => String.t | nil,
    :documentation_url => String.t | nil,
    :github_url => String.t | nil,
    :homepage_url => String.t | nil,
    :id => String.t | nil,
    :logo_url => String.t | nil,
    :name => String.t | nil,
    :updated_at => String.t | nil
  }

  def decode(value) do
    value
  end
end

