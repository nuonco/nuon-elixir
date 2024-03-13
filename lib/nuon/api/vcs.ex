# NOTE: This file is auto generated by OpenAPI Generator 7.5.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Api.Vcs do
  @moduledoc """
  API calls for all endpoints tagged `Vcs`.
  """

  alias Nuon.Connection
  import Nuon.RequestBuilder

  @doc """
  create a vcs connection for Github

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `service_create_connection_request` (ServiceCreateConnectionRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppVcsConnection.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_vcs_connection(Tesla.Env.client, Nuon.Model.ServiceCreateConnectionRequest.t, keyword()) :: {:ok, Nuon.Model.AppVcsConnection.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def create_vcs_connection(connection, service_create_connection_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/vcs/connections")
      |> add_param(:body, :body, service_create_connection_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.AppVcsConnection},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  public connection to create a vcs connection via a callback

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `service_create_connection_callback_request` (ServiceCreateConnectionCallbackRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppVcsConnection.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_vcs_connection_callback(Tesla.Env.client, Nuon.Model.ServiceCreateConnectionCallbackRequest.t, keyword()) :: {:ok, Nuon.Model.AppVcsConnection.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def create_vcs_connection_callback(connection, service_create_connection_callback_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/vcs/connection-callback")
      |> add_param(:body, :body, service_create_connection_callback_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.AppVcsConnection},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get all vcs connected repos for an org

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%ServiceRepository{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_all_vcs_connected_repos(Tesla.Env.client, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, list(Nuon.Model.ServiceRepository.t)} | {:error, Tesla.Env.t}
  def get_all_vcs_connected_repos(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/vcs/connected-repos")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.ServiceRepository},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get vcs connection for an org

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppVcsConnection{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_org_vcs_connections(Tesla.Env.client, keyword()) :: {:ok, list(Nuon.Model.AppVcsConnection.t)} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_org_vcs_connections(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/vcs/connections")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppVcsConnection},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  returns a vcs connection for an org

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `connection_id` (String.t): connection ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppVcsConnection.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_vcs_connection(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.AppVcsConnection.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_vcs_connection(connection, connection_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/vcs/connections/#{connection_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppVcsConnection},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end
end
