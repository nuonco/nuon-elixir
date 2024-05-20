# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Api.Sandboxes do
  @moduledoc """
  API calls for all endpoints tagged `Sandboxes`.
  """

  alias Nuon.Connection
  import Nuon.RequestBuilder

  @doc """
  get a sandbox

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `sandbox_id` (String.t): sandbox ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppSandbox.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sandbox(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.AppSandbox.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_sandbox(connection, sandbox_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/sandboxes/#{sandbox_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppSandbox},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get sandbox releases

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `sandbox_id` (String.t): sandbox ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppSandboxRelease{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sandbox_releases(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, list(Nuon.Model.AppSandboxRelease.t)} | {:error, Tesla.Env.t}
  def get_sandbox_releases(connection, sandbox_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/sandboxes/#{sandbox_id}/releases")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppSandboxRelease},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get all sandboxes

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppSandbox{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sandboxes(Tesla.Env.client, keyword()) :: {:ok, list(Nuon.Model.AppSandbox.t)} | {:error, Tesla.Env.t}
  def get_sandboxes(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/sandboxes")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppSandbox}
    ])
  end
end
