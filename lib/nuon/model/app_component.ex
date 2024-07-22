# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppComponent do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :app_id,
    :config_versions,
    :created_at,
    :created_by,
    :created_by_id,
    :dependencies,
    :id,
    :name,
    :resolved_var_name,
    :status,
    :status_description,
    :type,
    :updated_at,
    :var_name
  ]

  @type t :: %__MODULE__{
    :app_id => String.t | nil,
    :config_versions => integer() | nil,
    :created_at => String.t | nil,
    :created_by => Nuon.Model.AppAccount.t | nil,
    :created_by_id => String.t | nil,
    :dependencies => [String.t] | nil,
    :id => String.t | nil,
    :name => String.t | nil,
    :resolved_var_name => String.t | nil,
    :status => String.t | nil,
    :status_description => String.t | nil,
    :type => Nuon.Model.AppComponentType.t | nil,
    :updated_at => String.t | nil,
    :var_name => String.t | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_by, :struct, Nuon.Model.AppAccount)
     |> Deserializer.deserialize(:type, :struct, Nuon.Model.AppComponentType)
  end
end

