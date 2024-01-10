# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Api.Releases do
  @moduledoc """
  API calls for all endpoints tagged `Releases`.
  """

  alias Nuon.Connection
  import Nuon.RequestBuilder

  @doc """
  create a release

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `component_id` (String.t): component ID
  - `service_create_component_release_request` (ServiceCreateComponentReleaseRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppComponentRelease.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_component_release(Tesla.Env.client, String.t, Nuon.Model.ServiceCreateComponentReleaseRequest.t, keyword()) :: {:ok, Nuon.Model.AppComponentRelease.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def create_component_release(connection, component_id, service_create_component_release_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/components/#{component_id}/releases")
      |> add_param(:body, :body, service_create_component_release_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.AppComponentRelease},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get all releases for an app

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppComponentRelease{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_releases(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, list(Nuon.Model.AppComponentRelease.t)} | {:error, Tesla.Env.t}
  def get_app_releases(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/releases")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppComponentRelease},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get all releases for a component

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `component_id` (String.t): component ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppComponentRelease{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_component_releases(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, list(Nuon.Model.AppComponentRelease.t)} | {:error, Tesla.Env.t}
  def get_component_releases(connection, component_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/components/#{component_id}/releases")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppComponentRelease},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get a release

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `release_id` (String.t): release ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppComponentRelease.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_release(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.AppComponentRelease.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_release(connection, release_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/releases/#{release_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppComponentRelease},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get a release

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `release_id` (String.t): release ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppComponentReleaseStep{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_release_steps(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, list(Nuon.Model.AppComponentReleaseStep.t)} | {:error, Tesla.Env.t}
  def get_release_steps(connection, release_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/releases/#{release_id}/steps")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppComponentReleaseStep},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end
end
