# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
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
  Create an app config, by pushing the contents of a config file.  The API will automatically configure the app according to the config file in the background. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `body` (map()): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app_config(Tesla.Env.client, String.t, %{optional(String.t) => }, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppAppConfig.t} | {:error, Tesla.Env.t}
  def create_app_config(connection, app_id, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/apps/#{app_id}/config")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.AppAppConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  App input configs allow you to declare the inputs for your application, and do things such as require customer inputs or  expose configuration knobs in your application. 

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
  create an app secret
  Create an app secret that can be used to configure components. To reference an app secret, use `.nuon.secrets.<secret_name>`.  **NOTE** secrets can only be written, or deleted, not read. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_create_app_secret_request` (ServiceCreateAppSecretRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppSecret.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_app_secret(Tesla.Env.client, String.t, Nuon.Model.ServiceCreateAppSecretRequest.t, keyword()) :: {:ok, Nuon.Model.AppAppSecret.t} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def create_app_secret(connection, app_id, service_create_app_secret_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/apps/#{app_id}/secret")
      |> add_param(:body, :body, service_create_app_secret_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.AppAppSecret},
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
  delete an app secret
  Delete an app secret. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `secret_id` (String.t): secret ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, boolean()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_app_secret(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, boolean()} | {:error, Tesla.Env.t}
  def delete_app_secret(connection, app_id, secret_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v1/apps/#{app_id}/secret/#{secret_id}")
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
  get an app config
  Fetch an app config by id. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `app_config_id` (String.t): app config ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_config(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppAppConfig.t} | {:error, Tesla.Env.t}
  def get_app_config(connection, app_id, app_config_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/config/#{app_config_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an app config template
  Create an application template which provides a fully rendered config that can be modified and used to kickstart any application. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `type` (String.t): app template type
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.ServiceAppConfigTemplate.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_config_template(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.ServiceAppConfigTemplate.t} | {:error, Tesla.Env.t}
  def get_app_config_template(connection, app_id, type, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/template-config")
      |> add_param(:query, :type, type)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.ServiceAppConfigTemplate},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end

  @doc """
  get app configs
  Returns all configs for the app. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppAppConfig{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_configs(Tesla.Env.client, String.t, keyword()) :: {:ok, [Nuon.Model.AppAppConfig.t]} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_app_configs(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/configs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppConfig},
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
  @spec get_app_input_configs(Tesla.Env.client, String.t, keyword()) :: {:ok, [Nuon.Model.AppAppInputConfig.t]} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
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
  get latest app config
  Returns the most recent config for the provided app. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_latest_config(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppAppConfig.t} | {:error, Tesla.Env.t}
  def get_app_latest_config(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/latest-config")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppConfig},
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
  @spec get_app_runner_configs(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, [Nuon.Model.AppAppRunnerConfig.t]} | {:error, Tesla.Env.t}
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
  @spec get_app_sandbox_configs(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, [Nuon.Model.AppAppSandboxConfig.t]} | {:error, Tesla.Env.t}
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
  get app secrets
  List all secrets for an app.  **NOTE** this does not return any sensitive values, as secrets are write only. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppAppSecret{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_secrets(Tesla.Env.client, String.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, [Nuon.Model.AppAppSecret.t]} | {:error, Tesla.Env.t}
  def get_app_secrets(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/secrets")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Nuon.Model.AppAppSecret},
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
  @spec get_apps(Tesla.Env.client, keyword()) :: {:ok, [Nuon.Model.AppApp.t]} | {:ok, Nuon.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
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
  Update an app config, setting status and state. 

  ### Parameters

  - `connection` (Nuon.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `app_config_id` (String.t): app config ID
  - `service_update_app_config_request` (ServiceUpdateAppConfigRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Nuon.Model.AppAppConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_app_config(Tesla.Env.client, String.t, String.t, Nuon.Model.ServiceUpdateAppConfigRequest.t, keyword()) :: {:ok, Nuon.Model.StderrErrResponse.t} | {:ok, Nuon.Model.AppAppConfig.t} | {:error, Tesla.Env.t}
  def update_app_config(connection, app_id, app_config_id, service_update_app_config_request, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/v1/apps/#{app_id}/config/#{app_config_id}")
      |> add_param(:body, :body, service_update_app_config_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Nuon.Model.AppAppConfig},
      {400, Nuon.Model.StderrErrResponse},
      {401, Nuon.Model.StderrErrResponse},
      {403, Nuon.Model.StderrErrResponse},
      {404, Nuon.Model.StderrErrResponse},
      {500, Nuon.Model.StderrErrResponse}
    ])
  end
end
