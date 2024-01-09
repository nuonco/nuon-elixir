# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Nuon.Api.Apps do
  @moduledoc """
  API calls for all endpoints tagged `Apps`.
  """

  alias Nuon.Connection
  import Nuon.RequestBuilder

  @doc """
  create an app

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `service_create_app_request` (ServiceCreateAppRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppApp.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app(Tesla.Env.client, Nuon.Model.ServiceCreateAppRequest.t, keyword()) :: {:ok, Nuon.Model.AppApp.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
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
      {201, Nuon.Model.AppApp},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_create_app_input_config_request` (ServiceCreateAppInputConfigRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppInputConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app_input_config(Tesla.Env.client, String.t, Nuon.Model.ServiceCreateAppInputConfigRequest.t, keyword()) :: {:ok, Nuon.Model.AppAppInputConfig.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
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
      {201, Nuon.Model.AppAppInputConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  create an app installer

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_create_app_installer_request` (ServiceCreateAppInstallerRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppInstaller.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app_installer(Tesla.Env.client, String.t, Nuon.Model.ServiceCreateAppInstallerRequest.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppAppInstaller.t} | {:error, Tesla.Env.t}
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
      {201, Nuon.Model.AppAppInstaller},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  create an app runner config

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_create_app_runner_config_request` (ServiceCreateAppRunnerConfigRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppRunnerConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app_runner_config(Tesla.Env.client, String.t, Nuon.Model.ServiceCreateAppRunnerConfigRequest.t, keyword()) :: {:ok, Nuon.Model.AppAppRunnerConfig.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def create_app_runner_config(connection, app_id, service_create_app_runner_config_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/apps/#{app_id}/runner-config")
      |> add_param(:body, :body, service_create_app_runner_config_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.AppAppRunnerConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  create an app sandbox config

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_create_app_sandbox_config_request` (ServiceCreateAppSandboxConfigRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppSandboxConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app_sandbox_config(Tesla.Env.client, String.t, Nuon.Model.ServiceCreateAppSandboxConfigRequest.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppAppSandboxConfig.t} | {:error, Tesla.Env.t}
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
      {201, Nuon.Model.AppAppSandboxConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  delete an app

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, boolean()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_app(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, boolean()} | {:error, Tesla.Env.t}
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
  get an app

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppApp.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.AppApp.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_app(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppApp},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get app input configs

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppAppInputConfig{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_input_configs(Tesla.Env.client, String.t, keyword()) :: {:ok, list(Nuon.Model.AppAppInputConfig.t)} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_app_input_configs(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/input-configs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppInputConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get latest app input config

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppInputConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_input_latest_config(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.AppAppInputConfig.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_app_input_latest_config(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/input-latest-config")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppInputConfig},
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
  get app runner configs

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppAppRunnerConfig{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_runner_configs(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, list(Nuon.Model.AppAppRunnerConfig.t)} | {:error, Tesla.Env.t}
  def get_app_runner_configs(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/runner-configs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppRunnerConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get latest app runner config

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppRunnerConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_runner_latest_config(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.AppAppRunnerConfig.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_app_runner_latest_config(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/runner-latest-config")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppRunnerConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get app sandbox configs

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppAppSandboxConfig{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_sandbox_configs(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, list(Nuon.Model.AppAppSandboxConfig.t)} | {:error, Tesla.Env.t}
  def get_app_sandbox_configs(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/sandbox-configs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppSandboxConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get latest app sandbox config

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppSandboxConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_sandbox_latest_config(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppAppSandboxConfig.t} | {:error, Tesla.Env.t}
  def get_app_sandbox_latest_config(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/sandbox-latest-config")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppSandboxConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get all apps for the current org

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppApp{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_apps(Tesla.Env.client, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, list(Nuon.Model.AppApp.t)} | {:error, Tesla.Env.t}
  def get_apps(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppApp},
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
  update an app

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_update_app_request` (ServiceUpdateAppRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppApp.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_app(Tesla.Env.client, String.t, Nuon.Model.ServiceUpdateAppRequest.t, keyword()) :: {:ok, Nuon.Model.AppApp.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
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
      {200, Nuon.Model.AppApp},
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