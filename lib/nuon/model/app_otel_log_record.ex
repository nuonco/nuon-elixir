# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Model.AppOtelLogRecord do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :body,
    :created_at,
    :created_by_id,
    :id,
    :log_attributes,
    :resource_attributes,
    :resource_schema_url,
    :runner_group_id,
    :runner_id,
    :runner_job_execution_id,
    :runner_job_id,
    :scope_attributes,
    :scope_name,
    :scope_schema_url,
    :scope_version,
    :service_name,
    :severity_number,
    :severity_text,
    :span_id,
    :timestamp,
    :timestamp_date,
    :timestamp_time,
    :trace_flags,
    :trace_id,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :body => String.t | nil,
    :created_at => String.t | nil,
    :created_by_id => String.t | nil,
    :id => String.t | nil,
    :log_attributes => %{optional(String.t) => String.t} | nil,
    :resource_attributes => %{optional(String.t) => String.t} | nil,
    :resource_schema_url => String.t | nil,
    :runner_group_id => String.t | nil,
    :runner_id => String.t | nil,
    :runner_job_execution_id => String.t | nil,
    :runner_job_id => String.t | nil,
    :scope_attributes => %{optional(String.t) => String.t} | nil,
    :scope_name => String.t | nil,
    :scope_schema_url => String.t | nil,
    :scope_version => String.t | nil,
    :service_name => String.t | nil,
    :severity_number => integer() | nil,
    :severity_text => String.t | nil,
    :span_id => String.t | nil,
    :timestamp => String.t | nil,
    :timestamp_date => String.t | nil,
    :timestamp_time => String.t | nil,
    :trace_flags => integer() | nil,
    :trace_id => String.t | nil,
    :updated_at => String.t | nil
  }

  def decode(value) do
    value
  end
end

