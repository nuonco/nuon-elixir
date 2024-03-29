# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Api.Apps do
  @moduledoc """
  API calls for all endpoints tagged `Apps`.
  """

  alias NuonAPI.Connection
  import NuonAPI.RequestBuilder

  @doc """
  create an app

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `service_create_app_request` (ServiceCreateAppRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppApp.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app(Tesla.Env.client, NuonAPI.Model.ServiceCreateAppRequest.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppApp.t} | {:error, Tesla.Env.t}
  def create_app(connection, service_create_app_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/apps")
      |> add_param(:body, :body, service_create_app_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppApp},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_create_app_input_config_request` (ServiceCreateAppInputConfigRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppAppInputConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app_input_config(Tesla.Env.client, String.t, NuonAPI.Model.ServiceCreateAppInputConfigRequest.t, keyword()) :: {:ok, NuonAPI.Model.AppAppInputConfig.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def create_app_input_config(connection, app_id, service_create_app_input_config_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/apps/#{app_id}/input-config")
      |> add_param(:body, :body, service_create_app_input_config_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppAppInputConfig},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  create an app installer

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_create_app_installer_request` (ServiceCreateAppInstallerRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppAppInstaller.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app_installer(Tesla.Env.client, String.t, NuonAPI.Model.ServiceCreateAppInstallerRequest.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppAppInstaller.t} | {:error, Tesla.Env.t}
  def create_app_installer(connection, app_id, service_create_app_installer_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/apps/#{app_id}/installer")
      |> add_param(:body, :body, service_create_app_installer_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppAppInstaller},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  create an app sandbox config

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_create_app_sandbox_config_request` (ServiceCreateAppSandboxConfigRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppAppSandboxConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app_sandbox_config(Tesla.Env.client, String.t, NuonAPI.Model.ServiceCreateAppSandboxConfigRequest.t, keyword()) :: {:ok, NuonAPI.Model.AppAppSandboxConfig.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def create_app_sandbox_config(connection, app_id, service_create_app_sandbox_config_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/apps/#{app_id}/sandbox-config")
      |> add_param(:body, :body, service_create_app_sandbox_config_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppAppSandboxConfig},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  delete an app

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, boolean()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_app(Tesla.Env.client, String.t, keyword()) :: {:ok, boolean()} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def delete_app(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v1/apps/#{app_id}")
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
  delete an app installer

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `installer_id` (String.t): installer ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, boolean()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_app_installer(Tesla.Env.client, String.t, keyword()) :: {:ok, boolean()} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
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
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an app

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppApp.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppApp.t} | {:error, Tesla.Env.t}
  def get_app(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppApp},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get app input configs

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppAppInputConfig{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_input_configs(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, list(NuonAPI.Model.AppAppInputConfig.t)} | {:error, Tesla.Env.t}
  def get_app_input_configs(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/input-configs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppAppInputConfig},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get latest app input config

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppAppInputConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_input_latest_config(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.AppAppInputConfig.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_app_input_latest_config(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/input-latest-config")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppAppInputConfig},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an app installer

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `installer_id` (String.t): installer ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppAppInstaller.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_installer(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppAppInstaller.t} | {:error, Tesla.Env.t}
  def get_app_installer(connection, installer_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installers/#{installer_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppAppInstaller},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get app sandbox configs

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppAppSandboxConfig{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_sandbox_configs(Tesla.Env.client, String.t, keyword()) :: {:ok, list(NuonAPI.Model.AppAppSandboxConfig.t)} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_app_sandbox_configs(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/sandbox-configs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppAppSandboxConfig},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get latest app sandbox config

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppAppSandboxConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_sandbox_latest_config(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.AppAppSandboxConfig.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_app_sandbox_latest_config(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/sandbox-latest-config")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppAppSandboxConfig},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get all apps for the current org

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppApp{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_apps(Tesla.Env.client, keyword()) :: {:ok, list(NuonAPI.Model.AppApp.t)} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_apps(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppApp},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  render an app installer

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `installer_slug` (String.t): installer slug or ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.ServiceAppInstaller.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec render_app_installer(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.ServiceAppInstaller.t} | {:error, Tesla.Env.t}
  def render_app_installer(connection, installer_slug, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installer/#{installer_slug}/render")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.ServiceAppInstaller},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  update an app

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_update_app_request` (ServiceUpdateAppRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppApp.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_app(Tesla.Env.client, String.t, NuonAPI.Model.ServiceUpdateAppRequest.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppApp.t} | {:error, Tesla.Env.t}
  def update_app(connection, app_id, service_update_app_request, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/v1/apps/#{app_id}")
      |> add_param(:body, :body, service_update_app_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppApp},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  update an app installer

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `installer_id` (String.t): installer ID
  - `service_update_app_installer_request` (ServiceUpdateAppInstallerRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppAppInstaller.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_app_installer(Tesla.Env.client, String.t, NuonAPI.Model.ServiceUpdateAppInstallerRequest.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppAppInstaller.t} | {:error, Tesla.Env.t}
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
      {201, NuonAPI.Model.AppAppInstaller},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end
end
