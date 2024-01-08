# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Api.Orgs do
  @moduledoc """
  API calls for all endpoints tagged `Orgs`.
  """

  alias NuonAPI.Connection
  import NuonAPI.RequestBuilder

  @doc """
  Add a user to the current org

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `service_create_org_user_request` (ServiceCreateOrgUserRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppUserOrg.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec add_user(Tesla.Env.client, NuonAPI.Model.ServiceCreateOrgUserRequest.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppUserOrg.t} | {:error, Tesla.Env.t}
  def add_user(connection, service_create_org_user_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/orgs/current/user")
      |> add_param(:body, :body, service_create_org_user_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppUserOrg},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  create a new org

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `service_create_org_request` (ServiceCreateOrgRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppOrg.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_org(Tesla.Env.client, NuonAPI.Model.ServiceCreateOrgRequest.t, keyword()) :: {:ok, NuonAPI.Model.AppOrg.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def create_org(connection, service_create_org_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/orgs")
      |> add_param(:body, :body, service_create_org_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppOrg},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  Delete an org

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, boolean()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_org(Tesla.Env.client, keyword()) :: {:ok, boolean()} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def delete_org(connection, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v1/orgs/current")
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

  @doc """
  Get an org

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppOrg.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_org(Tesla.Env.client, keyword()) :: {:ok, NuonAPI.Model.AppOrg.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_org(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/orgs/current")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppOrg},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  Return current user's orgs

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppOrg{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_orgs(Tesla.Env.client, keyword()) :: {:ok, list(NuonAPI.Model.AppOrg.t)} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_orgs(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/orgs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppOrg},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  Update current org

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `service_update_org_request` (ServiceUpdateOrgRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppOrg.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_org(Tesla.Env.client, NuonAPI.Model.ServiceUpdateOrgRequest.t, keyword()) :: {:ok, NuonAPI.Model.AppOrg.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def update_org(connection, service_update_org_request, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/v1/orgs/current")
      |> add_param(:body, :body, service_update_org_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppOrg},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end
end
