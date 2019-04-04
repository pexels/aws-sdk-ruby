# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:personalize)

module Aws::Personalize
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :personalize

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # @option params [required, String] :name
    #
    # @option params [required, String] :solution_version_arn
    #
    # @option params [required, Integer] :min_provisioned_tps
    #
    # @return [Types::CreateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCampaignResponse#campaign_arn #campaign_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_campaign({
    #     name: "Name", # required
    #     solution_version_arn: "Arn", # required
    #     min_provisioned_tps: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateCampaign AWS API Documentation
    #
    # @overload create_campaign(params = {})
    # @param [Hash] params ({})
    def create_campaign(params = {}, options = {})
      req = build_request(:create_campaign, params)
      req.send_request(options)
    end

    # @option params [required, String] :name
    #
    # @option params [required, String] :schema_arn
    #
    # @option params [required, String] :dataset_group_arn
    #
    # @option params [required, String] :dataset_type
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#dataset_arn #dataset_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     name: "Name", # required
    #     schema_arn: "Arn", # required
    #     dataset_group_arn: "Arn", # required
    #     dataset_type: "DatasetType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDataset AWS API Documentation
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # @option params [required, String] :name
    #
    # @option params [String] :role_arn
    #
    # @option params [String] :kms_key_arn
    #
    # @return [Types::CreateDatasetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetGroupResponse#dataset_group_arn #dataset_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_group({
    #     name: "Name", # required
    #     role_arn: "RoleArn",
    #     kms_key_arn: "KmsKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetGroup AWS API Documentation
    #
    # @overload create_dataset_group(params = {})
    # @param [Hash] params ({})
    def create_dataset_group(params = {}, options = {})
      req = build_request(:create_dataset_group, params)
      req.send_request(options)
    end

    # @option params [required, String] :job_name
    #
    # @option params [required, String] :dataset_arn
    #
    # @option params [required, Types::DataSource] :data_source
    #
    # @option params [required, String] :role_arn
    #
    # @return [Types::CreateDatasetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetImportJobResponse#dataset_import_job_arn #dataset_import_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_import_job({
    #     job_name: "Name", # required
    #     dataset_arn: "Arn", # required
    #     data_source: { # required
    #       data_location: "S3Location",
    #     },
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_import_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetImportJob AWS API Documentation
    #
    # @overload create_dataset_import_job(params = {})
    # @param [Hash] params ({})
    def create_dataset_import_job(params = {}, options = {})
      req = build_request(:create_dataset_import_job, params)
      req.send_request(options)
    end

    # @option params [required, String] :name
    #
    # @option params [required, String] :role_arn
    #
    # @option params [required, String] :dataset_group_arn
    #
    # @return [Types::CreateEventTrackerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventTrackerResponse#event_tracker_arn #event_tracker_arn} => String
    #   * {Types::CreateEventTrackerResponse#tracking_id #tracking_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_tracker({
    #     name: "Name", # required
    #     role_arn: "RoleArn", # required
    #     dataset_group_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_tracker_arn #=> String
    #   resp.tracking_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateEventTracker AWS API Documentation
    #
    # @overload create_event_tracker(params = {})
    # @param [Hash] params ({})
    def create_event_tracker(params = {}, options = {})
      req = build_request(:create_event_tracker, params)
      req.send_request(options)
    end

    # @option params [required, String] :name
    #
    # @option params [required, String] :schema
    #
    # @return [Types::CreateSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSchemaResponse#schema_arn #schema_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schema({
    #     name: "Name", # required
    #     schema: "AvroSchema", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSchema AWS API Documentation
    #
    # @overload create_schema(params = {})
    # @param [Hash] params ({})
    def create_schema(params = {}, options = {})
      req = build_request(:create_schema, params)
      req.send_request(options)
    end

    # @option params [required, String] :name
    #
    # @option params [Boolean] :perform_hpo
    #
    # @option params [Boolean] :perform_auto_ml
    #
    # @option params [String] :recipe_arn
    #
    # @option params [required, String] :dataset_group_arn
    #
    # @option params [String] :event_type
    #
    # @option params [Types::SolutionConfig] :solution_config
    #
    # @return [Types::CreateSolutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSolutionResponse#solution_arn #solution_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_solution({
    #     name: "Name", # required
    #     perform_hpo: false,
    #     perform_auto_ml: false,
    #     recipe_arn: "Arn",
    #     dataset_group_arn: "Arn", # required
    #     event_type: "EventType",
    #     solution_config: {
    #       event_value_threshold: "EventValueThreshold",
    #       hpo_config: {
    #         hpo_objective: {
    #           type: "HPOObjectiveType",
    #           metric_name: "MetricName",
    #           metric_regex: "MetricRegex",
    #         },
    #         hpo_resource_config: {
    #           max_number_of_training_jobs: "HPOResource",
    #           max_parallel_training_jobs: "HPOResource",
    #         },
    #         algorithm_hyper_parameter_ranges: {
    #           integer_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               min_value: 1,
    #               max_value: 1,
    #             },
    #           ],
    #           continuous_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               min_value: 1.0,
    #               max_value: 1.0,
    #             },
    #           ],
    #           categorical_hyper_parameter_ranges: [
    #             {
    #               name: "ParameterName",
    #               values: ["CategoricalValue"],
    #             },
    #           ],
    #         },
    #       },
    #       algorithm_hyper_parameters: {
    #         "ParameterName" => "ParameterValue",
    #       },
    #       feature_transformation_parameters: {
    #         "ParameterName" => "ParameterValue",
    #       },
    #       auto_ml_config: {
    #         metric_name: "MetricName",
    #         recipe_list: ["Arn"],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolution AWS API Documentation
    #
    # @overload create_solution(params = {})
    # @param [Hash] params ({})
    def create_solution(params = {}, options = {})
      req = build_request(:create_solution, params)
      req.send_request(options)
    end

    # @option params [required, String] :solution_arn
    #
    # @return [Types::CreateSolutionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSolutionVersionResponse#solution_version_arn #solution_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_solution_version({
    #     solution_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionVersion AWS API Documentation
    #
    # @overload create_solution_version(params = {})
    # @param [Hash] params ({})
    def create_solution_version(params = {}, options = {})
      req = build_request(:create_solution_version, params)
      req.send_request(options)
    end

    # @option params [required, String] :campaign_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign({
    #     campaign_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteCampaign AWS API Documentation
    #
    # @overload delete_campaign(params = {})
    # @param [Hash] params ({})
    def delete_campaign(params = {}, options = {})
      req = build_request(:delete_campaign, params)
      req.send_request(options)
    end

    # @option params [required, String] :dataset_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset({
    #     dataset_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteDataset AWS API Documentation
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # @option params [required, String] :dataset_group_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset_group({
    #     dataset_group_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteDatasetGroup AWS API Documentation
    #
    # @overload delete_dataset_group(params = {})
    # @param [Hash] params ({})
    def delete_dataset_group(params = {}, options = {})
      req = build_request(:delete_dataset_group, params)
      req.send_request(options)
    end

    # @option params [required, String] :event_tracker_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_tracker({
    #     event_tracker_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteEventTracker AWS API Documentation
    #
    # @overload delete_event_tracker(params = {})
    # @param [Hash] params ({})
    def delete_event_tracker(params = {}, options = {})
      req = build_request(:delete_event_tracker, params)
      req.send_request(options)
    end

    # @option params [required, String] :schema_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema({
    #     schema_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteSchema AWS API Documentation
    #
    # @overload delete_schema(params = {})
    # @param [Hash] params ({})
    def delete_schema(params = {}, options = {})
      req = build_request(:delete_schema, params)
      req.send_request(options)
    end

    # @option params [required, String] :solution_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_solution({
    #     solution_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteSolution AWS API Documentation
    #
    # @overload delete_solution(params = {})
    # @param [Hash] params ({})
    def delete_solution(params = {}, options = {})
      req = build_request(:delete_solution, params)
      req.send_request(options)
    end

    # @option params [required, String] :algorithm_arn
    #
    # @return [Types::DescribeAlgorithmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlgorithmResponse#algorithm #algorithm} => Types::Algorithm
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_algorithm({
    #     algorithm_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.algorithm.name #=> String
    #   resp.algorithm.algorithm_arn #=> String
    #   resp.algorithm.algorithm_image.name #=> String
    #   resp.algorithm.algorithm_image.docker_uri #=> String
    #   resp.algorithm.default_hyper_parameters #=> Hash
    #   resp.algorithm.default_hyper_parameters["ParameterName"] #=> String
    #   resp.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges #=> Array
    #   resp.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].name #=> String
    #   resp.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].min_value #=> Integer
    #   resp.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].max_value #=> Integer
    #   resp.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].is_tunable #=> Boolean
    #   resp.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges #=> Array
    #   resp.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].name #=> String
    #   resp.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].min_value #=> Float
    #   resp.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].max_value #=> Float
    #   resp.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].is_tunable #=> Boolean
    #   resp.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges #=> Array
    #   resp.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].name #=> String
    #   resp.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values #=> Array
    #   resp.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values[0] #=> String
    #   resp.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].is_tunable #=> Boolean
    #   resp.algorithm.default_resource_config #=> Hash
    #   resp.algorithm.default_resource_config["ParameterName"] #=> String
    #   resp.algorithm.training_input_mode #=> String
    #   resp.algorithm.role_arn #=> String
    #   resp.algorithm.creation_date_time #=> Time
    #   resp.algorithm.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeAlgorithm AWS API Documentation
    #
    # @overload describe_algorithm(params = {})
    # @param [Hash] params ({})
    def describe_algorithm(params = {}, options = {})
      req = build_request(:describe_algorithm, params)
      req.send_request(options)
    end

    # @option params [required, String] :campaign_arn
    #
    # @return [Types::DescribeCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCampaignResponse#campaign #campaign} => Types::Campaign
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_campaign({
    #     campaign_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign.name #=> String
    #   resp.campaign.campaign_arn #=> String
    #   resp.campaign.solution_version_arn #=> String
    #   resp.campaign.min_provisioned_tps #=> Integer
    #   resp.campaign.status #=> String
    #   resp.campaign.failure_reason #=> String
    #   resp.campaign.creation_date_time #=> Time
    #   resp.campaign.last_updated_date_time #=> Time
    #   resp.campaign.latest_campaign_update.solution_version_arn #=> String
    #   resp.campaign.latest_campaign_update.min_provisioned_tps #=> Integer
    #   resp.campaign.latest_campaign_update.status #=> String
    #   resp.campaign.latest_campaign_update.failure_reason #=> String
    #   resp.campaign.latest_campaign_update.creation_date_time #=> Time
    #   resp.campaign.latest_campaign_update.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeCampaign AWS API Documentation
    #
    # @overload describe_campaign(params = {})
    # @param [Hash] params ({})
    def describe_campaign(params = {}, options = {})
      req = build_request(:describe_campaign, params)
      req.send_request(options)
    end

    # @option params [required, String] :dataset_arn
    #
    # @return [Types::DescribeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetResponse#dataset #dataset} => Types::Dataset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset({
    #     dataset_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset.name #=> String
    #   resp.dataset.dataset_arn #=> String
    #   resp.dataset.dataset_group_arn #=> String
    #   resp.dataset.dataset_type #=> String
    #   resp.dataset.schema_arn #=> String
    #   resp.dataset.status #=> String
    #   resp.dataset.creation_date_time #=> Time
    #   resp.dataset.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDataset AWS API Documentation
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # @option params [required, String] :dataset_group_arn
    #
    # @return [Types::DescribeDatasetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetGroupResponse#dataset_group #dataset_group} => Types::DatasetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_group({
    #     dataset_group_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_group.name #=> String
    #   resp.dataset_group.dataset_group_arn #=> String
    #   resp.dataset_group.status #=> String
    #   resp.dataset_group.role_arn #=> String
    #   resp.dataset_group.kms_key_arn #=> String
    #   resp.dataset_group.creation_date_time #=> Time
    #   resp.dataset_group.last_updated_date_time #=> Time
    #   resp.dataset_group.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetGroup AWS API Documentation
    #
    # @overload describe_dataset_group(params = {})
    # @param [Hash] params ({})
    def describe_dataset_group(params = {}, options = {})
      req = build_request(:describe_dataset_group, params)
      req.send_request(options)
    end

    # @option params [required, String] :dataset_import_job_arn
    #
    # @return [Types::DescribeDatasetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetImportJobResponse#dataset_import_job #dataset_import_job} => Types::DatasetImportJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_import_job({
    #     dataset_import_job_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_import_job.job_name #=> String
    #   resp.dataset_import_job.dataset_import_job_arn #=> String
    #   resp.dataset_import_job.dataset_arn #=> String
    #   resp.dataset_import_job.data_source.data_location #=> String
    #   resp.dataset_import_job.role_arn #=> String
    #   resp.dataset_import_job.status #=> String
    #   resp.dataset_import_job.creation_date_time #=> Time
    #   resp.dataset_import_job.last_updated_date_time #=> Time
    #   resp.dataset_import_job.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetImportJob AWS API Documentation
    #
    # @overload describe_dataset_import_job(params = {})
    # @param [Hash] params ({})
    def describe_dataset_import_job(params = {}, options = {})
      req = build_request(:describe_dataset_import_job, params)
      req.send_request(options)
    end

    # @option params [required, String] :event_tracker_arn
    #
    # @return [Types::DescribeEventTrackerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventTrackerResponse#event_tracker #event_tracker} => Types::EventTracker
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_tracker({
    #     event_tracker_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_tracker.name #=> String
    #   resp.event_tracker.event_tracker_arn #=> String
    #   resp.event_tracker.account_id #=> String
    #   resp.event_tracker.tracking_id #=> String
    #   resp.event_tracker.role_arn #=> String
    #   resp.event_tracker.dataset_group_arn #=> String
    #   resp.event_tracker.status #=> String
    #   resp.event_tracker.creation_date_time #=> Time
    #   resp.event_tracker.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeEventTracker AWS API Documentation
    #
    # @overload describe_event_tracker(params = {})
    # @param [Hash] params ({})
    def describe_event_tracker(params = {}, options = {})
      req = build_request(:describe_event_tracker, params)
      req.send_request(options)
    end

    # @option params [required, String] :feature_transformation_arn
    #
    # @return [Types::DescribeFeatureTransformationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFeatureTransformationResponse#feature_transformation #feature_transformation} => Types::FeatureTransformation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_feature_transformation({
    #     feature_transformation_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.feature_transformation.name #=> String
    #   resp.feature_transformation.feature_transformation_arn #=> String
    #   resp.feature_transformation.default_parameters #=> Hash
    #   resp.feature_transformation.default_parameters["ParameterName"] #=> String
    #   resp.feature_transformation.creation_date_time #=> Time
    #   resp.feature_transformation.last_updated_date_time #=> Time
    #   resp.feature_transformation.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFeatureTransformation AWS API Documentation
    #
    # @overload describe_feature_transformation(params = {})
    # @param [Hash] params ({})
    def describe_feature_transformation(params = {}, options = {})
      req = build_request(:describe_feature_transformation, params)
      req.send_request(options)
    end

    # @option params [required, String] :recipe_arn
    #
    # @return [Types::DescribeRecipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecipeResponse#recipe #recipe} => Types::Recipe
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recipe({
    #     recipe_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recipe.name #=> String
    #   resp.recipe.recipe_arn #=> String
    #   resp.recipe.algorithm_arn #=> String
    #   resp.recipe.feature_transformation_arn #=> String
    #   resp.recipe.status #=> String
    #   resp.recipe.description #=> String
    #   resp.recipe.creation_date_time #=> Time
    #   resp.recipe.recipe_type #=> String
    #   resp.recipe.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeRecipe AWS API Documentation
    #
    # @overload describe_recipe(params = {})
    # @param [Hash] params ({})
    def describe_recipe(params = {}, options = {})
      req = build_request(:describe_recipe, params)
      req.send_request(options)
    end

    # @option params [required, String] :schema_arn
    #
    # @return [Types::DescribeSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSchemaResponse#schema #schema} => Types::DatasetSchema
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schema({
    #     schema_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema.name #=> String
    #   resp.schema.schema_arn #=> String
    #   resp.schema.schema #=> String
    #   resp.schema.creation_date_time #=> Time
    #   resp.schema.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSchema AWS API Documentation
    #
    # @overload describe_schema(params = {})
    # @param [Hash] params ({})
    def describe_schema(params = {}, options = {})
      req = build_request(:describe_schema, params)
      req.send_request(options)
    end

    # @option params [required, String] :solution_arn
    #
    # @return [Types::DescribeSolutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSolutionResponse#solution #solution} => Types::Solution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_solution({
    #     solution_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.solution.name #=> String
    #   resp.solution.solution_arn #=> String
    #   resp.solution.perform_hpo #=> Boolean
    #   resp.solution.perform_auto_ml #=> Boolean
    #   resp.solution.recipe_arn #=> String
    #   resp.solution.dataset_group_arn #=> String
    #   resp.solution.event_type #=> String
    #   resp.solution.solution_config.event_value_threshold #=> String
    #   resp.solution.solution_config.hpo_config.hpo_objective.type #=> String
    #   resp.solution.solution_config.hpo_config.hpo_objective.metric_name #=> String
    #   resp.solution.solution_config.hpo_config.hpo_objective.metric_regex #=> String
    #   resp.solution.solution_config.hpo_config.hpo_resource_config.max_number_of_training_jobs #=> String
    #   resp.solution.solution_config.hpo_config.hpo_resource_config.max_parallel_training_jobs #=> String
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges #=> Array
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].name #=> String
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].min_value #=> Integer
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].max_value #=> Integer
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges #=> Array
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].name #=> String
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].min_value #=> Float
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].max_value #=> Float
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges #=> Array
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].name #=> String
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values #=> Array
    #   resp.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values[0] #=> String
    #   resp.solution.solution_config.algorithm_hyper_parameters #=> Hash
    #   resp.solution.solution_config.algorithm_hyper_parameters["ParameterName"] #=> String
    #   resp.solution.solution_config.feature_transformation_parameters #=> Hash
    #   resp.solution.solution_config.feature_transformation_parameters["ParameterName"] #=> String
    #   resp.solution.solution_config.auto_ml_config.metric_name #=> String
    #   resp.solution.solution_config.auto_ml_config.recipe_list #=> Array
    #   resp.solution.solution_config.auto_ml_config.recipe_list[0] #=> String
    #   resp.solution.auto_ml_result.best_recipe_arn #=> String
    #   resp.solution.status #=> String
    #   resp.solution.creation_date_time #=> Time
    #   resp.solution.last_updated_date_time #=> Time
    #   resp.solution.latest_solution_version.solution_version_arn #=> String
    #   resp.solution.latest_solution_version.status #=> String
    #   resp.solution.latest_solution_version.creation_date_time #=> Time
    #   resp.solution.latest_solution_version.last_updated_date_time #=> Time
    #   resp.solution.latest_solution_version.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolution AWS API Documentation
    #
    # @overload describe_solution(params = {})
    # @param [Hash] params ({})
    def describe_solution(params = {}, options = {})
      req = build_request(:describe_solution, params)
      req.send_request(options)
    end

    # @option params [required, String] :solution_version_arn
    #
    # @return [Types::DescribeSolutionVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSolutionVersionResponse#solution_version #solution_version} => Types::SolutionVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_solution_version({
    #     solution_version_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_version.solution_version_arn #=> String
    #   resp.solution_version.solution_arn #=> String
    #   resp.solution_version.perform_hpo #=> Boolean
    #   resp.solution_version.perform_auto_ml #=> Boolean
    #   resp.solution_version.recipe_arn #=> String
    #   resp.solution_version.event_type #=> String
    #   resp.solution_version.dataset_group_arn #=> String
    #   resp.solution_version.solution_config.event_value_threshold #=> String
    #   resp.solution_version.solution_config.hpo_config.hpo_objective.type #=> String
    #   resp.solution_version.solution_config.hpo_config.hpo_objective.metric_name #=> String
    #   resp.solution_version.solution_config.hpo_config.hpo_objective.metric_regex #=> String
    #   resp.solution_version.solution_config.hpo_config.hpo_resource_config.max_number_of_training_jobs #=> String
    #   resp.solution_version.solution_config.hpo_config.hpo_resource_config.max_parallel_training_jobs #=> String
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges #=> Array
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].name #=> String
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].min_value #=> Integer
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].max_value #=> Integer
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges #=> Array
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].name #=> String
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].min_value #=> Float
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].max_value #=> Float
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges #=> Array
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].name #=> String
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values #=> Array
    #   resp.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values[0] #=> String
    #   resp.solution_version.solution_config.algorithm_hyper_parameters #=> Hash
    #   resp.solution_version.solution_config.algorithm_hyper_parameters["ParameterName"] #=> String
    #   resp.solution_version.solution_config.feature_transformation_parameters #=> Hash
    #   resp.solution_version.solution_config.feature_transformation_parameters["ParameterName"] #=> String
    #   resp.solution_version.solution_config.auto_ml_config.metric_name #=> String
    #   resp.solution_version.solution_config.auto_ml_config.recipe_list #=> Array
    #   resp.solution_version.solution_config.auto_ml_config.recipe_list[0] #=> String
    #   resp.solution_version.status #=> String
    #   resp.solution_version.failure_reason #=> String
    #   resp.solution_version.creation_date_time #=> Time
    #   resp.solution_version.last_updated_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionVersion AWS API Documentation
    #
    # @overload describe_solution_version(params = {})
    # @param [Hash] params ({})
    def describe_solution_version(params = {}, options = {})
      req = build_request(:describe_solution_version, params)
      req.send_request(options)
    end

    # @option params [required, String] :solution_version_arn
    #
    # @return [Types::GetSolutionMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSolutionMetricsResponse#solution_version_arn #solution_version_arn} => String
    #   * {Types::GetSolutionMetricsResponse#metrics #metrics} => Hash&lt;String,Float&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_solution_metrics({
    #     solution_version_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_version_arn #=> String
    #   resp.metrics #=> Hash
    #   resp.metrics["MetricName"] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/GetSolutionMetrics AWS API Documentation
    #
    # @overload get_solution_metrics(params = {})
    # @param [Hash] params ({})
    def get_solution_metrics(params = {}, options = {})
      req = build_request(:get_solution_metrics, params)
      req.send_request(options)
    end

    # @option params [String] :solution_arn
    #
    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListCampaignsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCampaignsResponse#campaigns #campaigns} => Array&lt;Types::CampaignSummary&gt;
    #   * {Types::ListCampaignsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_campaigns({
    #     solution_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.campaigns #=> Array
    #   resp.campaigns[0].name #=> String
    #   resp.campaigns[0].campaign_arn #=> String
    #   resp.campaigns[0].status #=> String
    #   resp.campaigns[0].creation_date_time #=> Time
    #   resp.campaigns[0].last_updated_date_time #=> Time
    #   resp.campaigns[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListCampaigns AWS API Documentation
    #
    # @overload list_campaigns(params = {})
    # @param [Hash] params ({})
    def list_campaigns(params = {}, options = {})
      req = build_request(:list_campaigns, params)
      req.send_request(options)
    end

    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListDatasetGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetGroupsResponse#dataset_groups #dataset_groups} => Array&lt;Types::DatasetGroupSummary&gt;
    #   * {Types::ListDatasetGroupsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_groups #=> Array
    #   resp.dataset_groups[0].name #=> String
    #   resp.dataset_groups[0].dataset_group_arn #=> String
    #   resp.dataset_groups[0].status #=> String
    #   resp.dataset_groups[0].creation_date_time #=> Time
    #   resp.dataset_groups[0].last_updated_date_time #=> Time
    #   resp.dataset_groups[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetGroups AWS API Documentation
    #
    # @overload list_dataset_groups(params = {})
    # @param [Hash] params ({})
    def list_dataset_groups(params = {}, options = {})
      req = build_request(:list_dataset_groups, params)
      req.send_request(options)
    end

    # @option params [String] :dataset_arn
    #
    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListDatasetImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetImportJobsResponse#dataset_import_jobs #dataset_import_jobs} => Array&lt;Types::DatasetImportJobSummary&gt;
    #   * {Types::ListDatasetImportJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_import_jobs({
    #     dataset_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_import_jobs #=> Array
    #   resp.dataset_import_jobs[0].dataset_import_job_arn #=> String
    #   resp.dataset_import_jobs[0].job_name #=> String
    #   resp.dataset_import_jobs[0].status #=> String
    #   resp.dataset_import_jobs[0].creation_date_time #=> Time
    #   resp.dataset_import_jobs[0].last_updated_date_time #=> Time
    #   resp.dataset_import_jobs[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetImportJobs AWS API Documentation
    #
    # @overload list_dataset_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_dataset_import_jobs(params = {}, options = {})
      req = build_request(:list_dataset_import_jobs, params)
      req.send_request(options)
    end

    # @option params [String] :dataset_group_arn
    #
    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetsResponse#datasets #datasets} => Array&lt;Types::DatasetSummary&gt;
    #   * {Types::ListDatasetsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets({
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datasets #=> Array
    #   resp.datasets[0].name #=> String
    #   resp.datasets[0].dataset_arn #=> String
    #   resp.datasets[0].dataset_type #=> String
    #   resp.datasets[0].status #=> String
    #   resp.datasets[0].creation_date_time #=> Time
    #   resp.datasets[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasets AWS API Documentation
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # @option params [String] :dataset_group_arn
    #
    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListEventTrackersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventTrackersResponse#event_trackers #event_trackers} => Array&lt;Types::EventTrackerSummary&gt;
    #   * {Types::ListEventTrackersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_trackers({
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_trackers #=> Array
    #   resp.event_trackers[0].name #=> String
    #   resp.event_trackers[0].event_tracker_arn #=> String
    #   resp.event_trackers[0].status #=> String
    #   resp.event_trackers[0].creation_date_time #=> Time
    #   resp.event_trackers[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListEventTrackers AWS API Documentation
    #
    # @overload list_event_trackers(params = {})
    # @param [Hash] params ({})
    def list_event_trackers(params = {}, options = {})
      req = build_request(:list_event_trackers, params)
      req.send_request(options)
    end

    # @option params [String] :recipe_provider
    #
    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListRecipesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecipesResponse#recipes #recipes} => Array&lt;Types::RecipeSummary&gt;
    #   * {Types::ListRecipesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recipes({
    #     recipe_provider: "SERVICE", # accepts SERVICE, BYOR, ALL
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.recipes #=> Array
    #   resp.recipes[0].name #=> String
    #   resp.recipes[0].recipe_arn #=> String
    #   resp.recipes[0].status #=> String
    #   resp.recipes[0].creation_date_time #=> Time
    #   resp.recipes[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListRecipes AWS API Documentation
    #
    # @overload list_recipes(params = {})
    # @param [Hash] params ({})
    def list_recipes(params = {}, options = {})
      req = build_request(:list_recipes, params)
      req.send_request(options)
    end

    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemasResponse#schemas #schemas} => Array&lt;Types::DatasetSchemaSummary&gt;
    #   * {Types::ListSchemasResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schemas({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.schemas #=> Array
    #   resp.schemas[0].name #=> String
    #   resp.schemas[0].schema_arn #=> String
    #   resp.schemas[0].creation_date_time #=> Time
    #   resp.schemas[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSchemas AWS API Documentation
    #
    # @overload list_schemas(params = {})
    # @param [Hash] params ({})
    def list_schemas(params = {}, options = {})
      req = build_request(:list_schemas, params)
      req.send_request(options)
    end

    # @option params [String] :solution_arn
    #
    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListSolutionVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSolutionVersionsResponse#solution_versions #solution_versions} => Array&lt;Types::SolutionVersionSummary&gt;
    #   * {Types::ListSolutionVersionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_solution_versions({
    #     solution_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.solution_versions #=> Array
    #   resp.solution_versions[0].solution_version_arn #=> String
    #   resp.solution_versions[0].status #=> String
    #   resp.solution_versions[0].creation_date_time #=> Time
    #   resp.solution_versions[0].last_updated_date_time #=> Time
    #   resp.solution_versions[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutionVersions AWS API Documentation
    #
    # @overload list_solution_versions(params = {})
    # @param [Hash] params ({})
    def list_solution_versions(params = {}, options = {})
      req = build_request(:list_solution_versions, params)
      req.send_request(options)
    end

    # @option params [String] :dataset_group_arn
    #
    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
    #
    # @return [Types::ListSolutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSolutionsResponse#solutions #solutions} => Array&lt;Types::SolutionSummary&gt;
    #   * {Types::ListSolutionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_solutions({
    #     dataset_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.solutions #=> Array
    #   resp.solutions[0].name #=> String
    #   resp.solutions[0].solution_arn #=> String
    #   resp.solutions[0].status #=> String
    #   resp.solutions[0].creation_date_time #=> Time
    #   resp.solutions[0].last_updated_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutions AWS API Documentation
    #
    # @overload list_solutions(params = {})
    # @param [Hash] params ({})
    def list_solutions(params = {}, options = {})
      req = build_request(:list_solutions, params)
      req.send_request(options)
    end

    # @option params [required, String] :campaign_arn
    #
    # @option params [String] :solution_version_arn
    #
    # @option params [Integer] :min_provisioned_tps
    #
    # @return [Types::UpdateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCampaignResponse#campaign_arn #campaign_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign({
    #     campaign_arn: "Arn", # required
    #     solution_version_arn: "Arn",
    #     min_provisioned_tps: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateCampaign AWS API Documentation
    #
    # @overload update_campaign(params = {})
    # @param [Hash] params ({})
    def update_campaign(params = {}, options = {})
      req = build_request(:update_campaign, params)
      req.send_request(options)
    end

    # @option params [required, String] :dataset_arn
    #
    # @option params [String] :schema_arn
    #
    # @return [Types::UpdateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDatasetResponse#dataset_arn #dataset_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset({
    #     dataset_arn: "Arn", # required
    #     schema_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateDataset AWS API Documentation
    #
    # @overload update_dataset(params = {})
    # @param [Hash] params ({})
    def update_dataset(params = {}, options = {})
      req = build_request(:update_dataset, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-personalize'
      context[:gem_version] = '1.0.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
