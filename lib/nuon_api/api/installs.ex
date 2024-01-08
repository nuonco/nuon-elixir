# NOTE: This file is auto generated by OpenAPI Generator 7.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NuonAPI.Api.Installs do
  @moduledoc """
  API calls for all endpoints tagged `Installs`.
  """

  alias NuonAPI.Connection
  import NuonAPI.RequestBuilder

  @doc """
  create an app install

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `service_create_install_request` (ServiceCreateInstallRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstall.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_install(Tesla.Env.client, String.t, NuonAPI.Model.ServiceCreateInstallRequest.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppInstall.t} | {:error, Tesla.Env.t}
  def create_install(connection, app_id, service_create_install_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/apps/#{app_id}/installs")
      |> add_param(:body, :body, service_create_install_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppInstall},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  deploy a build to an install

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `service_create_install_deploy_request` (ServiceCreateInstallDeployRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstallDeploy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_install_deploy(Tesla.Env.client, String.t, NuonAPI.Model.ServiceCreateInstallDeployRequest.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppInstallDeploy.t} | {:error, Tesla.Env.t}
  def create_install_deploy(connection, install_id, service_create_install_deploy_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/installs/#{install_id}/deploys")
      |> add_param(:body, :body, service_create_install_deploy_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppInstallDeploy},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  create install inputs

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `service_create_install_inputs_request` (ServiceCreateInstallInputsRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstallInputs.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_install_inputs(Tesla.Env.client, String.t, NuonAPI.Model.ServiceCreateInstallInputsRequest.t, keyword()) :: {:ok, NuonAPI.Model.AppInstallInputs.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def create_install_inputs(connection, install_id, service_create_install_inputs_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/installs/#{install_id}/inputs")
      |> add_param(:body, :body, service_create_install_inputs_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppInstallInputs},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  delete an install

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, boolean()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_install(Tesla.Env.client, String.t, keyword()) :: {:ok, boolean()} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def delete_install(connection, install_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v1/installs/#{install_id}")
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
  get all installs for an app

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `app_id` (String.t): app ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppInstall{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_app_installs(Tesla.Env.client, String.t, keyword()) :: {:ok, list(NuonAPI.Model.AppInstall.t)} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_app_installs(connection, app_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/apps/#{app_id}/installs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstall},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an installs current inputs

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstallInputs.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_current_install_inputs(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.AppInstallInputs.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_current_install_inputs(connection, install_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/inputs/current")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstallInputs},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an install

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstall.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppInstall.t} | {:error, Tesla.Env.t}
  def get_install(connection, install_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstall},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an install component

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `component_id` (String.t): component ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstallComponent.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_component(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, NuonAPI.Model.AppInstallComponent.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_install_component(connection, install_id, component_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/component/#{component_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstallComponent},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an install components deploys

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `component_id` (String.t): component ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppInstallDeploy{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_component_deploys(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, list(NuonAPI.Model.AppInstallDeploy.t)} | {:error, Tesla.Env.t}
  def get_install_component_deploys(connection, install_id, component_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/components/#{component_id}/deploys")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstallDeploy},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get the latest deploy for an install component

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `component_id` (String.t): component ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstallDeploy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_component_latest_deploy(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppInstallDeploy.t} | {:error, Tesla.Env.t}
  def get_install_component_latest_deploy(connection, install_id, component_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/components/#{component_id}/deploys/latest")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstallDeploy},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an installs components

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppInstallComponent{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_components(Tesla.Env.client, String.t, keyword()) :: {:ok, list(NuonAPI.Model.AppInstallComponent.t)} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_install_components(connection, install_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/components")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstallComponent},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an install deploy

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `deploy_id` (String.t): deploy ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstallDeploy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_deploy(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppInstallDeploy.t} | {:error, Tesla.Env.t}
  def get_install_deploy(connection, install_id, deploy_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/deploys/#{deploy_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstallDeploy},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get install deploy logs

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `deploy_id` (String.t): deploy ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AnyType{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_deploy_logs(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(any())} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_install_deploy_logs(connection, install_id, deploy_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/deploys/#{deploy_id}/logs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, []},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get install deploy plan

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `deploy_id` (String.t): deploy ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.Planv1Plan.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_deploy_plan(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, NuonAPI.Model.Planv1Plan.t} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_install_deploy_plan(connection, install_id, deploy_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/deploys/#{deploy_id}/plan")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.Planv1Plan},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get all deploys to an install

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppInstallDeploy{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_deploys(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, list(NuonAPI.Model.AppInstallDeploy.t)} | {:error, Tesla.Env.t}
  def get_install_deploys(connection, install_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/deploys")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstallDeploy},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an installs inputs

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppInstallInputs{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_inputs(Tesla.Env.client, String.t, keyword()) :: {:ok, list(NuonAPI.Model.AppInstallInputs.t)} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_install_inputs(connection, install_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/inputs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstallInputs},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an install deploy

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstallDeploy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_latest_deploy(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppInstallDeploy.t} | {:error, Tesla.Env.t}
  def get_install_latest_deploy(connection, install_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/deploys/latest")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstallDeploy},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get install sandbox run logs

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `run_id` (String.t): run ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AnyType{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_sandbox_run_logs(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, list(any())} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_install_sandbox_run_logs(connection, install_id, run_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/sandbox-run/#{run_id}/logs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, []},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an installs sandbox runs

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppInstallSandboxRun{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_install_sandbox_runs(Tesla.Env.client, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, list(NuonAPI.Model.AppInstallSandboxRun.t)} | {:error, Tesla.Env.t}
  def get_install_sandbox_runs(connection, install_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs/#{install_id}/sandbox-runs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstallSandboxRun},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get all installs for an org

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%AppInstall{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_org_installs(Tesla.Env.client, keyword()) :: {:ok, list(NuonAPI.Model.AppInstall.t)} | {:ok, NuonAPI.Model.StderrErrResponse.t} | {:error, Tesla.Env.t}
  def get_org_installs(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installs")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstall},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  create an app install from an installer

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `installer_slug` (String.t): installer slug or ID
  - `service_installer_create_install_request` (ServiceInstallerCreateInstallRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstall.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec installer_create_installer(Tesla.Env.client, String.t, NuonAPI.Model.ServiceInstallerCreateInstallRequest.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppInstall.t} | {:error, Tesla.Env.t}
  def installer_create_installer(connection, installer_slug, service_installer_create_install_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/installer/#{installer_slug}/installs")
      |> add_param(:body, :body, service_installer_create_install_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppInstall},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  get an installer install

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `installer_slug` (String.t): installer slug or ID
  - `install_id` (String.t): install id
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstall.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec installer_get_install(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppInstall.t} | {:error, Tesla.Env.t}
  def installer_get_install(connection, installer_slug, install_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/installer/#{installer_slug}/install/#{install_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstall},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  teardown an install component

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): install ID
  - `component_id` (String.t): component ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstallDeploy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec teardown_install_component(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppInstallDeploy.t} | {:error, Tesla.Env.t}
  def teardown_install_component(connection, install_id, component_id, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/installs/#{install_id}/components/#{component_id}/teardown")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, NuonAPI.Model.AppInstallDeploy},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end

  @doc """
  update an install

  ### Parameters

  - `connection` (NuonAPI.Connection): Connection to server
  - `install_id` (String.t): app ID
  - `service_update_install_request` (ServiceUpdateInstallRequest): Input
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, NuonAPI.Model.AppInstall.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_install(Tesla.Env.client, String.t, NuonAPI.Model.ServiceUpdateInstallRequest.t, keyword()) :: {:ok, NuonAPI.Model.StderrErrResponse.t} | {:ok, NuonAPI.Model.AppInstall.t} | {:error, Tesla.Env.t}
  def update_install(connection, install_id, service_update_install_request, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/v1/installs/#{install_id}")
      |> add_param(:body, :body, service_update_install_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, NuonAPI.Model.AppInstall},
      {400, NuonAPI.Model.StderrErrResponse},
      {401, NuonAPI.Model.StderrErrResponse},
      {403, NuonAPI.Model.StderrErrResponse},
      {404, NuonAPI.Model.StderrErrResponse},
      {500, NuonAPI.Model.StderrErrResponse}
    ])
  end
end
