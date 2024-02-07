# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Api.Installers do
  @moduledoc """
  API calls for all endpoints tagged `Installers`.
  """

  alias Nuon.Connection
  import Nuon.RequestBuilder

  @doc """
  create an app installer

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `service_create_app_installer_request` (ServiceCreateAppInstallerRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppInstaller.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app_installer(Tesla.Env.client, Nuon.Model.ServiceCreateAppInstallerRequest.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppAppInstaller.t} | {:error, Tesla.Env.t}
  def create_app_installer(connection, service_create_app_installer_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/installers")
      |> add_param(:body, :body, service_create_app_installer_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.AppAppInstaller},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  delete an app installer

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `installer_id` (String.t): installer ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, boolean()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_app_installer(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, boolean()} | {:error, Tesla.Env.t}
  def delete_app_installer(connection, installer_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v1/installers/#{installer_id}")
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
  get an app installer

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `installer_id` (String.t): installer ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppInstaller.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_installer(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppAppInstaller.t} | {:error, Tesla.Env.t}
  def get_app_installer(connection, installer_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installers/#{installer_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppInstaller},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get installers for current org
  Return all installers for the current org. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppAppInstaller{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_installers(Tesla.Env.client, keyword()) :: {:ok, list(Nuon.Model.AppAppInstaller.t)} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_installers(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installers")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppInstaller},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  create an app install from an installer

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `installer_slug` (String.t): installer slug or ID
  - `service_create_install_request` (ServiceCreateInstallRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppInstall.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec installer_create_install(Tesla.Env.client, String.t, Nuon.Model.ServiceCreateInstallRequest.t, keyword()) :: {:ok, Nuon.Model.AppInstall.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def installer_create_install(connection, installer_slug, service_create_install_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/installer/#{installer_slug}/installs")
      |> add_param(:body, :body, service_create_install_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.AppInstall},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an installer install

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `installer_slug` (String.t): installer slug or ID
  - `install_id` (String.t): install id
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppInstall.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec installer_get_install(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Nuon.Model.AppInstall.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def installer_get_install(connection, installer_slug, install_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installer/#{installer_slug}/install/#{install_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppInstall},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  render an app installer

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `installer_slug` (String.t): installer slug or ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.ServiceAppInstaller.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec render_app_installer(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.ServiceAppInstaller.t} | {:error, Tesla.Env.t}
  def render_app_installer(connection, installer_slug, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installer/#{installer_slug}/render")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.ServiceAppInstaller},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  update an app installer

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `installer_id` (String.t): installer ID
  - `service_update_app_installer_request` (ServiceUpdateAppInstallerRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppInstaller.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_app_installer(Tesla.Env.client, String.t, Nuon.Model.ServiceUpdateAppInstallerRequest.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppAppInstaller.t} | {:error, Tesla.Env.t}
  def update_app_installer(connection, installer_id, service_update_app_installer_request, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/v1/installers/#{installer_id}")
      |> add_param(:body, :body, service_update_app_installer_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.AppAppInstaller},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end
end