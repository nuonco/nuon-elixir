# NOTE: This file is auto generated by OpenAPI Generator 7.4.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.ServiceUpdateInstallerRequestLinks do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :community,
    :demo,
    :documentation,
    :github,
    :homepage,
    :logo
  ]

  @type t :: %__MODULE__{
    :community => String.t,
    :demo => String.t,
    :documentation => String.t,
    :github => String.t,
    :homepage => String.t,
    :logo => String.t
  }

  def decode(value) do
    value
  end
end

