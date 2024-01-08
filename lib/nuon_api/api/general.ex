# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Api.General do
  @moduledoc """
  API calls for all endpoints tagged `General`.
  """

  alias NuonAPI.Connection
  import NuonAPI.RequestBuilder

  @doc """
  Get config for cli

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.ServiceCliConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_cli_config(Tesla.Env.client, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.ServiceCliConfig.t} | {:error, Tesla.Env.t}
  def get_cli_config(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/general/cli-config")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.ServiceCliConfig},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  Get current user

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppUserToken.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_current_user(Tesla.Env.client, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppUserToken.t} | {:error, Tesla.Env.t}
  def get_current_user(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/general/current-user")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppUserToken},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  Publish a metric from different Nuon clients for telemetry purposes.

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `service_publish_metric_input` ([NuonAPI.Model.ServicePublishMetricInput.t]): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec publish_metrics(Tesla.Env.client, list(NuonAPI.Model.ServicePublishMetricInput.t), keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def publish_metrics(connection, service_publish_metric_input, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/general/metrics")
      |> add_param(:body, :body, service_publish_metric_input)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end
end
