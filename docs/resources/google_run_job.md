+++

title = "google_run_job Resource"
platform = "gcp"
draft = false
gh_repo = "inspec-gcp"


[menu.inspec]

title = "google_run_job"
identifier = "inspec/resources/gcp/google_run_job Resource"
parent = "inspec/resources/gcp"
+++

Use the `google_run_job` InSpec audit resource to test the properties of a test a Google Job.

## Installation
{{% inspec_gcp_install %}}

## Syntax
A `google_run_job` is used to test a Google Job resource

## Examples
```
describe google_run_job(name: 'projects/{project}/locations/{location}/jobs/{value_name}') do
	it { should exist }
	its('name') { should cmp 'value_name' }
	its('uid') { should cmp 'value_uid' }
	its('generation') { should cmp 'value_generation' }
	its('create_time') { should cmp 'value_createtime' }
	its('update_time') { should cmp 'value_updatetime' }
	its('delete_time') { should cmp 'value_deletetime' }
	its('expire_time') { should cmp 'value_expiretime' }
	its('creator') { should cmp 'value_creator' }
	its('last_modifier') { should cmp 'value_lastmodifier' }
	its('client') { should cmp 'value_client' }
	its('client_version') { should cmp 'value_clientversion' }
	its('launch_stage') { should cmp 'value_launchstage' }
	its('observed_generation') { should cmp 'value_observedgeneration' }
	its('start_execution_token') { should cmp 'value_startexecutiontoken' }
	its('run_execution_token') { should cmp 'value_runexecutiontoken' }
	its('etag') { should cmp 'value_etag' }
end

describe google_run_job(name: "projects/{project}/locations/{location}/jobs/{does_not_exit}") do
	it { should_not exist }
end
```

## Parameters
Properties that can be accessed from the `google_run_job` resource:

## Properties
Properties that can be accessed from the `google_run_job` resource:


  * `name`: The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}

  * `uid`: Output only. Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.

  * `generation`: Output only. A number that monotonically increases every time the user modifies the desired state.

  * `labels`: Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.

    * `additional_properties`:

  * `annotations`: Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules.

    * `additional_properties`:

  * `create_time`: Output only. The creation time.

  * `update_time`: Output only. The last-modified time.

  * `delete_time`: Output only. The deletion time. It is only populated as a response to a Delete request.

  * `expire_time`: Output only. For a deleted resource, the time after which it will be permamently deleted.

  * `creator`: Output only. Email address of the authenticated creator.

  * `last_modifier`: Output only. Email address of the last authenticated modifier.

  * `client`: Arbitrary identifier for the API client.

  * `client_version`: Arbitrary version identifier for the API client.

  * `launch_stage`: The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  Possible values:
    * LAUNCH_STAGE_UNSPECIFIED
    * UNIMPLEMENTED
    * PRELAUNCH
    * EARLY_ACCESS
    * ALPHA
    * BETA
    * GA
    * DEPRECATED

  * `binary_authorization`: Settings for Binary Authorization feature.

    * `use_default`: Optional. If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.

    * `policy`: Optional. The path to a binary authorization policy. Format: projects/{project}/platforms/cloudRun/{policy-name}

    * `breakglass_justification`: Optional. If present, indicates to use Breakglass using this justification. If use_default is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass

  * `template`: ExecutionTemplate describes the data an execution should have when created from a template.

    * `labels`: Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 ExecutionTemplate.

      * `additional_properties`:

    * `annotations`: Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules.

      * `additional_properties`:

    * `parallelism`: Specifies the maximum desired number of tasks the execution should run at given time. Must be <= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism.

    * `task_count`: Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.

    * `template`: TaskTemplate describes the data a task should have when created from a template.

      * `containers`: Holds the single container that defines the unit of execution for this task.

        * `name`: Name of the container specified as a DNS_LABEL (RFC 1123).

        * `image`: Required. Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.

        * `command`: Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.

        * `args`: Arguments to the entrypoint. The docker image's CMD is used if this is not provided.

        * `env`: List of environment variables to set in the container.

          * `name`: Required. Name of the environment variable. Must not exceed 32768 characters.

          * `value`: Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "", and the maximum length is 32768 bytes.

          * `value_source`: EnvVarSource represents a source for the value of an EnvVar.

            * `secret_key_ref`: SecretEnvVarSource represents a source for the value of an EnvVar.

              * `secret`: Required. The name of the secret in Cloud Secret Manager. Format: {secret_name} if the secret is in the same project. projects/{project}/secrets/{secret_name} if the secret is in a different project.

              * `version`: The Cloud Secret Manager secret version. Can be 'latest' for the latest version, an integer for a specific version, or a version alias.

        * `resources`: ResourceRequirements describes the compute resource requirements.

          * `limits`: Only `memory` and `cpu` keys in the map are supported. Notes: * The only supported values for CPU are '1', '2', '4', and '8'. Setting 4 CPU requires at least 2Gi of memory. For more information, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits

            * `additional_properties`:

          * `cpu_idle`: Determines whether CPU is only allocated during requests (true by default). However, if ResourceRequirements is set, the caller must explicitly set this field to true to preserve the default behavior.

          * `startup_cpu_boost`: Determines whether CPU should be boosted on startup of a new container instance above the requested CPU threshold, this can help reduce cold-start latency.

        * `ports`: List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.

          * `name`: If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".

          * `container_port`: Port number the container listens on. This must be a valid TCP port number, 0 < container_port < 65536.

        * `volume_mounts`: Volume to mount into the container's filesystem.

          * `name`: Required. This must match the Name of a Volume.

          * `mount_path`: Required. Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be `/cloudsql`. All instances defined in the Volume will be available as `/cloudsql/[instance]`. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run

        * `working_dir`: Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.

        * `liveness_probe`: Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

          * `initial_delay_seconds`: Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.

          * `timeout_seconds`: Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.

          * `period_seconds`: Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.

          * `failure_threshold`: Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.

          * `http_get`: HTTPGetAction describes an action based on HTTP Get requests.

            * `path`: Optional. Path to access on the HTTP server. Defaults to '/'.

            * `http_headers`: Optional. Custom headers to set in the request. HTTP allows repeated headers.

              * `name`: Required. The header field name

              * `value`: Optional. The header field value

            * `port`: Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.

          * `tcp_socket`: TCPSocketAction describes an action based on opening a socket

            * `port`: Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.

          * `grpc`: GRPCAction describes an action involving a GRPC port.

            * `port`: Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.

            * `service`: Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC.

        * `startup_probe`: Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

          * `initial_delay_seconds`: Optional. Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240.

          * `timeout_seconds`: Optional. Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds.

          * `period_seconds`: Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.

          * `failure_threshold`: Optional. Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.

          * `http_get`: HTTPGetAction describes an action based on HTTP Get requests.

            * `path`: Optional. Path to access on the HTTP server. Defaults to '/'.

            * `http_headers`: Optional. Custom headers to set in the request. HTTP allows repeated headers.

              * `name`: Required. The header field name

              * `value`: Optional. The header field value

            * `port`: Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.

          * `tcp_socket`: TCPSocketAction describes an action based on opening a socket

            * `port`: Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.

          * `grpc`: GRPCAction describes an action involving a GRPC port.

            * `port`: Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.

            * `service`: Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC.

        * `depends_on`: Names of the containers that must start before this container.

      * `volumes`: Optional. A list of Volumes to make available to containers.

        * `name`: Required. Volume's name.

        * `secret`: The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secret.

          * `secret`: Required. The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project.

          * `items`: If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version.

            * `path`: Required. The relative path of the secret in the container.

            * `version`: The Cloud Secret Manager secret version. Can be 'latest' for the latest value, or an integer or a secret alias for a specific version.

            * `mode`: Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.

          * `default_mode`: Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. This might be in conflict with other options that affect the file mode, like fsGroup, and as a result, other mode bits could be set.

        * `cloud_sql_instance`: Represents a set of Cloud SQL instances. Each one will be available under /cloudsql/[instance]. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.

          * `instances`: The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}

        * `empty_dir`: In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).

          * `medium`: The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional
          Possible values:
            * MEDIUM_UNSPECIFIED
            * MEMORY

          * `size_limit`: Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir

        * `nfs`: Represents an NFS mount.

          * `server`: Hostname or IP address of the NFS server

          * `path`: Path that is exported by the NFS server.

          * `read_only`: If true, the volume will be mounted as read only for all mounts.

        * `gcs`: Represents a volume backed by a Cloud Storage bucket using Cloud Storage FUSE.

          * `bucket`: Cloud Storage Bucket name.

          * `read_only`: If true, the volume will be mounted as read only for all mounts.

      * `max_retries`: Number of retries allowed per Task, before marking this Task failed. Defaults to 3.

      * `timeout`: Optional. Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.

      * `service_account`: Optional. Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.

      * `execution_environment`: Optional. The execution environment being used to host this Task.
      Possible values:
        * EXECUTION_ENVIRONMENT_UNSPECIFIED
        * EXECUTION_ENVIRONMENT_GEN1
        * EXECUTION_ENVIRONMENT_GEN2

      * `encryption_key`: A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek

      * `vpc_access`: VPC Access settings. For more information on sending traffic to a VPC network, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.

        * `connector`: VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. For more information on sending traffic to a VPC network via a connector, visit https://cloud.google.com/run/docs/configuring/vpc-connectors.

        * `egress`: Optional. Traffic VPC egress settings. If not provided, it defaults to PRIVATE_RANGES_ONLY.
        Possible values:
          * VPC_EGRESS_UNSPECIFIED
          * ALL_TRAFFIC
          * PRIVATE_RANGES_ONLY

        * `network_interfaces`: Optional. Direct VPC egress settings. Currently only single network interface is supported.

          * `network`: Optional. The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be looked up from the subnetwork.

          * `subnetwork`: Optional. The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used.

          * `tags`: Optional. Network tags applied to this Cloud Run resource.

  * `observed_generation`: Output only. The generation of this Job. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.

  * `terminal_condition`: Defines a status condition for a resource.

    * `type`: type is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting Types common to all resources include: * "Ready": True when the Resource is ready.

    * `state`: State of the condition.
    Possible values:
      * STATE_UNSPECIFIED
      * CONDITION_PENDING
      * CONDITION_RECONCILING
      * CONDITION_FAILED
      * CONDITION_SUCCEEDED

    * `message`: Human readable message indicating details about the current status.

    * `last_transition_time`: Last time the condition transitioned from one status to another.

    * `severity`: How to interpret failures of this condition, one of Error, Warning, Info
    Possible values:
      * SEVERITY_UNSPECIFIED
      * ERROR
      * WARNING
      * INFO

    * `reason`: Output only. A common (service-level) reason for this condition.
    Possible values:
      * COMMON_REASON_UNDEFINED
      * UNKNOWN
      * REVISION_FAILED
      * PROGRESS_DEADLINE_EXCEEDED
      * CONTAINER_MISSING
      * CONTAINER_PERMISSION_DENIED
      * CONTAINER_IMAGE_UNAUTHORIZED
      * CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED
      * ENCRYPTION_KEY_PERMISSION_DENIED
      * ENCRYPTION_KEY_CHECK_FAILED
      * SECRETS_ACCESS_CHECK_FAILED
      * WAITING_FOR_OPERATION
      * IMMEDIATE_RETRY
      * POSTPONED_RETRY
      * INTERNAL

    * `revision_reason`: Output only. A reason for the revision condition.
    Possible values:
      * REVISION_REASON_UNDEFINED
      * PENDING
      * RESERVE
      * RETIRED
      * RETIRING
      * RECREATING
      * HEALTH_CHECK_CONTAINER_ERROR
      * CUSTOMIZED_PATH_RESPONSE_PENDING
      * MIN_INSTANCES_NOT_PROVISIONED
      * ACTIVE_REVISION_LIMIT_REACHED
      * NO_DEPLOYMENT
      * HEALTH_CHECK_SKIPPED
      * MIN_INSTANCES_WARMING

    * `execution_reason`: Output only. A reason for the execution condition.
    Possible values:
      * EXECUTION_REASON_UNDEFINED
      * JOB_STATUS_SERVICE_POLLING_ERROR
      * NON_ZERO_EXIT_CODE
      * CANCELLED
      * CANCELLING
      * DELETED

  * `conditions`: Output only. The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.

    * `type`: type is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting Types common to all resources include: * "Ready": True when the Resource is ready.

    * `state`: State of the condition.
    Possible values:
      * STATE_UNSPECIFIED
      * CONDITION_PENDING
      * CONDITION_RECONCILING
      * CONDITION_FAILED
      * CONDITION_SUCCEEDED

    * `message`: Human readable message indicating details about the current status.

    * `last_transition_time`: Last time the condition transitioned from one status to another.

    * `severity`: How to interpret failures of this condition, one of Error, Warning, Info
    Possible values:
      * SEVERITY_UNSPECIFIED
      * ERROR
      * WARNING
      * INFO

    * `reason`: Output only. A common (service-level) reason for this condition.
    Possible values:
      * COMMON_REASON_UNDEFINED
      * UNKNOWN
      * REVISION_FAILED
      * PROGRESS_DEADLINE_EXCEEDED
      * CONTAINER_MISSING
      * CONTAINER_PERMISSION_DENIED
      * CONTAINER_IMAGE_UNAUTHORIZED
      * CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED
      * ENCRYPTION_KEY_PERMISSION_DENIED
      * ENCRYPTION_KEY_CHECK_FAILED
      * SECRETS_ACCESS_CHECK_FAILED
      * WAITING_FOR_OPERATION
      * IMMEDIATE_RETRY
      * POSTPONED_RETRY
      * INTERNAL

    * `revision_reason`: Output only. A reason for the revision condition.
    Possible values:
      * REVISION_REASON_UNDEFINED
      * PENDING
      * RESERVE
      * RETIRED
      * RETIRING
      * RECREATING
      * HEALTH_CHECK_CONTAINER_ERROR
      * CUSTOMIZED_PATH_RESPONSE_PENDING
      * MIN_INSTANCES_NOT_PROVISIONED
      * ACTIVE_REVISION_LIMIT_REACHED
      * NO_DEPLOYMENT
      * HEALTH_CHECK_SKIPPED
      * MIN_INSTANCES_WARMING

    * `execution_reason`: Output only. A reason for the execution condition.
    Possible values:
      * EXECUTION_REASON_UNDEFINED
      * JOB_STATUS_SERVICE_POLLING_ERROR
      * NON_ZERO_EXIT_CODE
      * CANCELLED
      * CANCELLING
      * DELETED

  * `execution_count`: Output only. Number of executions created for this job.

  * `latest_created_execution`: Reference to an Execution. Use /Executions.GetExecution with the given name to get full execution including the latest status.

    * `name`: Name of the execution.

    * `create_time`: Creation timestamp of the execution.

    * `completion_time`: Creation timestamp of the execution.

    * `delete_time`: The deletion time of the execution. It is only populated as a response to a Delete request.

    * `completion_status`: Status for the execution completion.
    Possible values:
      * COMPLETION_STATUS_UNSPECIFIED
      * EXECUTION_SUCCEEDED
      * EXECUTION_FAILED
      * EXECUTION_RUNNING
      * EXECUTION_PENDING
      * EXECUTION_CANCELLED

  * `reconciling`: Output only. Returns true if the Job is currently being acted upon by the system to bring it into the desired state. When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, `observed_generation` and `latest_succeeded_execution`, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `observed_generation` and `generation`, `latest_succeeded_execution` and `latest_created_execution`. If reconciliation failed, `observed_generation` and `latest_succeeded_execution` will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in `terminal_condition` and `conditions`.

  * `satisfies_pzs`: Output only. Reserved for future use.

  * `start_execution_token`: A unique string used as a suffix creating a new execution. The Job will become ready when the execution is successfully started. The sum of job name and token length must be fewer than 63 characters.

  * `run_execution_token`: A unique string used as a suffix for creating a new execution. The Job will become ready when the execution is successfully completed. The sum of job name and token length must be fewer than 63 characters.

  * `etag`: Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.


## GCP Permissions

Ensure the [https://run.googleapis.com/](https://console.cloud.google.com/apis/library/run.googleapis.com/) is enabled for the current project.