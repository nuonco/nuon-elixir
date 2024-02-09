# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppVcsConnection do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :created_by_id,
    :github_install_id,
    :id,
    :updated_at,
    :vcs_connection_commit
  ]

  @type t :: %__MODULE__{
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :github_install_id => String.t | nil,
    :id => String.t | nil,
    :updated_at => String.t | nil,
    :vcs_connection_commit => [Nuon.Model.AppVcsConnectionCommit.t] | nil
  }

  alias Nuon.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:vcs_connection_commit, :list, Nuon.Model.AppVcsConnectionCommit)
  end
end

