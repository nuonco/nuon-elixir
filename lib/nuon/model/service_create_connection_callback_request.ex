# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceCreateConnectionCallbackRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :github_install_id,
    :org_id
  ]

  @type t :: %__MODULE__{
    :github_install_id => String.t,
    :org_id => String.t
  }

  def decode(value) do
    value
  end
end

