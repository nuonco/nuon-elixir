# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppAppConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_id,
    :content,
    :created_at,
    :created_by,
    :created_by_id,
    :format,
    :generated_terraform,
    :id,
    :org_id,
    :status,
    :status_description,
    :updated_at,
    :version
  ]

  @type t :: %__MODULE__{
    :app_id => String.t | nil,
    :content => String.t | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :format => Nuon.Model.AppAppConfigFmt.t | nil,
    :generated_terraform => String.t | nil,
    :id => String.t | nil,
    :org_id => String.t | nil,
    :status => Nuon.Model.AppAppConfigStatus.t | nil,
    :status_description => String.t | nil,
    :updated_at => String.t | nil,
    :version => integer() | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
     |> Deserializer.deserialize(:format, :struct, Nuon.Model.AppAppConfigFmt)
     |> Deserializer.deserialize(:status, :struct, Nuon.Model.AppAppConfigStatus)
  end
end

