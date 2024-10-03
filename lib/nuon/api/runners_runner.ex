# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Api.RunnersRunner do
  @moduledoc """
  API calls for all endpoints tagged `RunnersRunner`.
  """

  alias Nuon.Connection
  import Nuon.RequestBuilder

  @doc """
  get runner job
  Return a runner job. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `runner_job_id` (String.t): runner job ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppRunnerJob.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_runner_job(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppRunnerJob.t} | {:error, Tesla.Env.t}
  def get_runner_job(connection, runner_job_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/runner-jobs/#{runner_job_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppRunnerJob},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get runner job executions
  Return executions for a runner job. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `runner_job_id` (String.t): runner job ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppRunnerJobExecution{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_runner_job_executions(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, [Nuon.Model.AppRunnerJobExecution.t]} | {:error, Tesla.Env.t}
  def get_runner_job_executions(connection, runner_job_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/runner-jobs/#{runner_job_id}/executions")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppRunnerJobExecution},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get runner job plan
  Return a plan for a runner job. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `runner_job_id` (String.t): runner job ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_runner_job_plan(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_runner_job_plan(connection, runner_job_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/runner-jobs/#{runner_job_id}/plan")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get runner jobs
  Return runner jobs. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `runner_id` (String.t): runner ID
  - `opts` (keyword): Optional parameters
    - `:limit` (integer()): limit of jobs to return
    - `:group` (String.t): job group
    - `:status` (String.t): job status

  ### Returns

  - `{:ok, [%AppRunnerJob{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_runner_jobs(Tesla.Env.client, String.t, keyword()) :: {:ok, [Nuon.Model.AppRunnerJob.t]} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_runner_jobs(connection, runner_id, opts \\ []) do
    optional_params = %{
      :limit => :query,
      :group => :query,
      :status => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/runners/#{runner_id}/jobs")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppRunnerJob},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get runner settings
  Return runner settings for the provided runner. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `runner_id` (String.t): runner ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppRunnerGroupSettings.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_runner_settings(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppRunnerGroupSettings.t} | {:error, Tesla.Env.t}
  def get_runner_settings(connection, runner_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/runners/#{runner_id}/settings")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppRunnerGroupSettings},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end
end