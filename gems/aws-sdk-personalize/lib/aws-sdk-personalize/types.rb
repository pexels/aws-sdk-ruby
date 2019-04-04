# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Personalize
  module Types

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] algorithm_arn
    #   @return [String]
    #
    # @!attribute [rw] algorithm_image
    #   @return [Types::AlgorithmImage]
    #
    # @!attribute [rw] default_hyper_parameters
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] default_hyper_parameter_ranges
    #   @return [Types::DefaultHyperParameterRanges]
    #
    # @!attribute [rw] default_resource_config
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] training_input_mode
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Algorithm AWS API Documentation
    #
    class Algorithm < Struct.new(
      :name,
      :algorithm_arn,
      :algorithm_image,
      :default_hyper_parameters,
      :default_hyper_parameter_ranges,
      :default_resource_config,
      :training_input_mode,
      :role_arn,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] docker_uri
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/AlgorithmImage AWS API Documentation
    #
    class AlgorithmImage < Struct.new(
      :name,
      :docker_uri)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AutoMLConfig
    #   data as a hash:
    #
    #       {
    #         metric_name: "MetricName",
    #         recipe_list: ["Arn"],
    #       }
    #
    # @!attribute [rw] metric_name
    #   @return [String]
    #
    # @!attribute [rw] recipe_list
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/AutoMLConfig AWS API Documentation
    #
    class AutoMLConfig < Struct.new(
      :metric_name,
      :recipe_list)
      include Aws::Structure
    end

    # @!attribute [rw] best_recipe_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/AutoMLResult AWS API Documentation
    #
    class AutoMLResult < Struct.new(
      :best_recipe_arn)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] campaign_arn
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   @return [String]
    #
    # @!attribute [rw] min_provisioned_tps
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @!attribute [rw] latest_campaign_update
    #   @return [Types::CampaignUpdateSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Campaign AWS API Documentation
    #
    class Campaign < Struct.new(
      :name,
      :campaign_arn,
      :solution_version_arn,
      :min_provisioned_tps,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time,
      :latest_campaign_update)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] campaign_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CampaignSummary AWS API Documentation
    #
    class CampaignSummary < Struct.new(
      :name,
      :campaign_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   @return [String]
    #
    # @!attribute [rw] min_provisioned_tps
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CampaignUpdateSummary AWS API Documentation
    #
    class CampaignUpdateSummary < Struct.new(
      :solution_version_arn,
      :min_provisioned_tps,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CategoricalHyperParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "ParameterName",
    #         values: ["CategoricalValue"],
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CategoricalHyperParameterRange AWS API Documentation
    #
    class CategoricalHyperParameterRange < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ContinuousHyperParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "ParameterName",
    #         min_value: 1.0,
    #         max_value: 1.0,
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   @return [Float]
    #
    # @!attribute [rw] max_value
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ContinuousHyperParameterRange AWS API Documentation
    #
    class ContinuousHyperParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCampaignRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         solution_version_arn: "Arn", # required
    #         min_provisioned_tps: 1, # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   @return [String]
    #
    # @!attribute [rw] min_provisioned_tps
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateCampaignRequest AWS API Documentation
    #
    class CreateCampaignRequest < Struct.new(
      :name,
      :solution_version_arn,
      :min_provisioned_tps)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateCampaignResponse AWS API Documentation
    #
    class CreateCampaignResponse < Struct.new(
      :campaign_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         role_arn: "RoleArn",
    #         kms_key_arn: "KmsKeyArn",
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetGroupRequest AWS API Documentation
    #
    class CreateDatasetGroupRequest < Struct.new(
      :name,
      :role_arn,
      :kms_key_arn)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetGroupResponse AWS API Documentation
    #
    class CreateDatasetGroupResponse < Struct.new(
      :dataset_group_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetImportJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "Name", # required
    #         dataset_arn: "Arn", # required
    #         data_source: { # required
    #           data_location: "S3Location",
    #         },
    #         role_arn: "RoleArn", # required
    #       }
    #
    # @!attribute [rw] job_name
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetImportJobRequest AWS API Documentation
    #
    class CreateDatasetImportJobRequest < Struct.new(
      :job_name,
      :dataset_arn,
      :data_source,
      :role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_job_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetImportJobResponse AWS API Documentation
    #
    class CreateDatasetImportJobResponse < Struct.new(
      :dataset_import_job_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatasetRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         schema_arn: "Arn", # required
    #         dataset_group_arn: "Arn", # required
    #         dataset_type: "DatasetType", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetRequest AWS API Documentation
    #
    class CreateDatasetRequest < Struct.new(
      :name,
      :schema_arn,
      :dataset_group_arn,
      :dataset_type)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateDatasetResponse AWS API Documentation
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEventTrackerRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         role_arn: "RoleArn", # required
    #         dataset_group_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateEventTrackerRequest AWS API Documentation
    #
    class CreateEventTrackerRequest < Struct.new(
      :name,
      :role_arn,
      :dataset_group_arn)
      include Aws::Structure
    end

    # @!attribute [rw] event_tracker_arn
    #   @return [String]
    #
    # @!attribute [rw] tracking_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateEventTrackerResponse AWS API Documentation
    #
    class CreateEventTrackerResponse < Struct.new(
      :event_tracker_arn,
      :tracking_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSchemaRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         schema: "AvroSchema", # required
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSchemaRequest AWS API Documentation
    #
    class CreateSchemaRequest < Struct.new(
      :name,
      :schema)
      include Aws::Structure
    end

    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSchemaResponse AWS API Documentation
    #
    class CreateSchemaResponse < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSolutionRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         perform_hpo: false,
    #         perform_auto_ml: false,
    #         recipe_arn: "Arn",
    #         dataset_group_arn: "Arn", # required
    #         event_type: "EventType",
    #         solution_config: {
    #           event_value_threshold: "EventValueThreshold",
    #           hpo_config: {
    #             hpo_objective: {
    #               type: "HPOObjectiveType",
    #               metric_name: "MetricName",
    #               metric_regex: "MetricRegex",
    #             },
    #             hpo_resource_config: {
    #               max_number_of_training_jobs: "HPOResource",
    #               max_parallel_training_jobs: "HPOResource",
    #             },
    #             algorithm_hyper_parameter_ranges: {
    #               integer_hyper_parameter_ranges: [
    #                 {
    #                   name: "ParameterName",
    #                   min_value: 1,
    #                   max_value: 1,
    #                 },
    #               ],
    #               continuous_hyper_parameter_ranges: [
    #                 {
    #                   name: "ParameterName",
    #                   min_value: 1.0,
    #                   max_value: 1.0,
    #                 },
    #               ],
    #               categorical_hyper_parameter_ranges: [
    #                 {
    #                   name: "ParameterName",
    #                   values: ["CategoricalValue"],
    #                 },
    #               ],
    #             },
    #           },
    #           algorithm_hyper_parameters: {
    #             "ParameterName" => "ParameterValue",
    #           },
    #           feature_transformation_parameters: {
    #             "ParameterName" => "ParameterValue",
    #           },
    #           auto_ml_config: {
    #             metric_name: "MetricName",
    #             recipe_list: ["Arn"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] perform_hpo
    #   @return [Boolean]
    #
    # @!attribute [rw] perform_auto_ml
    #   @return [Boolean]
    #
    # @!attribute [rw] recipe_arn
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   @return [String]
    #
    # @!attribute [rw] solution_config
    #   @return [Types::SolutionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionRequest AWS API Documentation
    #
    class CreateSolutionRequest < Struct.new(
      :name,
      :perform_hpo,
      :perform_auto_ml,
      :recipe_arn,
      :dataset_group_arn,
      :event_type,
      :solution_config)
      include Aws::Structure
    end

    # @!attribute [rw] solution_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionResponse AWS API Documentation
    #
    class CreateSolutionResponse < Struct.new(
      :solution_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSolutionVersionRequest
    #   data as a hash:
    #
    #       {
    #         solution_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] solution_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionVersionRequest AWS API Documentation
    #
    class CreateSolutionVersionRequest < Struct.new(
      :solution_arn)
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/CreateSolutionVersionResponse AWS API Documentation
    #
    class CreateSolutionVersionResponse < Struct.new(
      :solution_version_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DataSource
    #   data as a hash:
    #
    #       {
    #         data_location: "S3Location",
    #       }
    #
    # @!attribute [rw] data_location
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :data_location)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Dataset AWS API Documentation
    #
    class Dataset < Struct.new(
      :name,
      :dataset_arn,
      :dataset_group_arn,
      :dataset_type,
      :schema_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetGroup AWS API Documentation
    #
    class DatasetGroup < Struct.new(
      :name,
      :dataset_group_arn,
      :status,
      :role_arn,
      :kms_key_arn,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetGroupSummary AWS API Documentation
    #
    class DatasetGroupSummary < Struct.new(
      :name,
      :dataset_group_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   @return [String]
    #
    # @!attribute [rw] dataset_import_job_arn
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetImportJob AWS API Documentation
    #
    class DatasetImportJob < Struct.new(
      :job_name,
      :dataset_import_job_arn,
      :dataset_arn,
      :data_source,
      :role_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_job_arn
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetImportJobSummary AWS API Documentation
    #
    class DatasetImportJobSummary < Struct.new(
      :dataset_import_job_arn,
      :job_name,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetSchema AWS API Documentation
    #
    class DatasetSchema < Struct.new(
      :name,
      :schema_arn,
      :schema,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetSchemaSummary AWS API Documentation
    #
    class DatasetSchemaSummary < Struct.new(
      :name,
      :schema_arn,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DatasetSummary AWS API Documentation
    #
    class DatasetSummary < Struct.new(
      :name,
      :dataset_arn,
      :dataset_type,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_tunable
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DefaultCategoricalHyperParameterRange AWS API Documentation
    #
    class DefaultCategoricalHyperParameterRange < Struct.new(
      :name,
      :values,
      :is_tunable)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   @return [Float]
    #
    # @!attribute [rw] max_value
    #   @return [Float]
    #
    # @!attribute [rw] is_tunable
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DefaultContinuousHyperParameterRange AWS API Documentation
    #
    class DefaultContinuousHyperParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value,
      :is_tunable)
      include Aws::Structure
    end

    # @!attribute [rw] integer_hyper_parameter_ranges
    #   @return [Array<Types::DefaultIntegerHyperParameterRange>]
    #
    # @!attribute [rw] continuous_hyper_parameter_ranges
    #   @return [Array<Types::DefaultContinuousHyperParameterRange>]
    #
    # @!attribute [rw] categorical_hyper_parameter_ranges
    #   @return [Array<Types::DefaultCategoricalHyperParameterRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DefaultHyperParameterRanges AWS API Documentation
    #
    class DefaultHyperParameterRanges < Struct.new(
      :integer_hyper_parameter_ranges,
      :continuous_hyper_parameter_ranges,
      :categorical_hyper_parameter_ranges)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   @return [Integer]
    #
    # @!attribute [rw] max_value
    #   @return [Integer]
    #
    # @!attribute [rw] is_tunable
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DefaultIntegerHyperParameterRange AWS API Documentation
    #
    class DefaultIntegerHyperParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value,
      :is_tunable)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCampaignRequest
    #   data as a hash:
    #
    #       {
    #         campaign_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] campaign_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteCampaignRequest AWS API Documentation
    #
    class DeleteCampaignRequest < Struct.new(
      :campaign_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetGroupRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteDatasetGroupRequest AWS API Documentation
    #
    class DeleteDatasetGroupRequest < Struct.new(
      :dataset_group_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteDatasetRequest AWS API Documentation
    #
    class DeleteDatasetRequest < Struct.new(
      :dataset_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEventTrackerRequest
    #   data as a hash:
    #
    #       {
    #         event_tracker_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] event_tracker_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteEventTrackerRequest AWS API Documentation
    #
    class DeleteEventTrackerRequest < Struct.new(
      :event_tracker_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSchemaRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteSchemaRequest AWS API Documentation
    #
    class DeleteSchemaRequest < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSolutionRequest
    #   data as a hash:
    #
    #       {
    #         solution_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] solution_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DeleteSolutionRequest AWS API Documentation
    #
    class DeleteSolutionRequest < Struct.new(
      :solution_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAlgorithmRequest
    #   data as a hash:
    #
    #       {
    #         algorithm_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] algorithm_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeAlgorithmRequest AWS API Documentation
    #
    class DescribeAlgorithmRequest < Struct.new(
      :algorithm_arn)
      include Aws::Structure
    end

    # @!attribute [rw] algorithm
    #   @return [Types::Algorithm]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeAlgorithmResponse AWS API Documentation
    #
    class DescribeAlgorithmResponse < Struct.new(
      :algorithm)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCampaignRequest
    #   data as a hash:
    #
    #       {
    #         campaign_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] campaign_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeCampaignRequest AWS API Documentation
    #
    class DescribeCampaignRequest < Struct.new(
      :campaign_arn)
      include Aws::Structure
    end

    # @!attribute [rw] campaign
    #   @return [Types::Campaign]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeCampaignResponse AWS API Documentation
    #
    class DescribeCampaignResponse < Struct.new(
      :campaign)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetGroupRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetGroupRequest AWS API Documentation
    #
    class DescribeDatasetGroupRequest < Struct.new(
      :dataset_group_arn)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_group
    #   @return [Types::DatasetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetGroupResponse AWS API Documentation
    #
    class DescribeDatasetGroupResponse < Struct.new(
      :dataset_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetImportJobRequest
    #   data as a hash:
    #
    #       {
    #         dataset_import_job_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_import_job_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetImportJobRequest AWS API Documentation
    #
    class DescribeDatasetImportJobRequest < Struct.new(
      :dataset_import_job_arn)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_job
    #   @return [Types::DatasetImportJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetImportJobResponse AWS API Documentation
    #
    class DescribeDatasetImportJobResponse < Struct.new(
      :dataset_import_job)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] dataset_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetRequest AWS API Documentation
    #
    class DescribeDatasetRequest < Struct.new(
      :dataset_arn)
      include Aws::Structure
    end

    # @!attribute [rw] dataset
    #   @return [Types::Dataset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeDatasetResponse AWS API Documentation
    #
    class DescribeDatasetResponse < Struct.new(
      :dataset)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventTrackerRequest
    #   data as a hash:
    #
    #       {
    #         event_tracker_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] event_tracker_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeEventTrackerRequest AWS API Documentation
    #
    class DescribeEventTrackerRequest < Struct.new(
      :event_tracker_arn)
      include Aws::Structure
    end

    # @!attribute [rw] event_tracker
    #   @return [Types::EventTracker]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeEventTrackerResponse AWS API Documentation
    #
    class DescribeEventTrackerResponse < Struct.new(
      :event_tracker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFeatureTransformationRequest
    #   data as a hash:
    #
    #       {
    #         feature_transformation_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] feature_transformation_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFeatureTransformationRequest AWS API Documentation
    #
    class DescribeFeatureTransformationRequest < Struct.new(
      :feature_transformation_arn)
      include Aws::Structure
    end

    # @!attribute [rw] feature_transformation
    #   @return [Types::FeatureTransformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeFeatureTransformationResponse AWS API Documentation
    #
    class DescribeFeatureTransformationResponse < Struct.new(
      :feature_transformation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRecipeRequest
    #   data as a hash:
    #
    #       {
    #         recipe_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] recipe_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeRecipeRequest AWS API Documentation
    #
    class DescribeRecipeRequest < Struct.new(
      :recipe_arn)
      include Aws::Structure
    end

    # @!attribute [rw] recipe
    #   @return [Types::Recipe]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeRecipeResponse AWS API Documentation
    #
    class DescribeRecipeResponse < Struct.new(
      :recipe)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSchemaRequest
    #   data as a hash:
    #
    #       {
    #         schema_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSchemaRequest AWS API Documentation
    #
    class DescribeSchemaRequest < Struct.new(
      :schema_arn)
      include Aws::Structure
    end

    # @!attribute [rw] schema
    #   @return [Types::DatasetSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSchemaResponse AWS API Documentation
    #
    class DescribeSchemaResponse < Struct.new(
      :schema)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSolutionRequest
    #   data as a hash:
    #
    #       {
    #         solution_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] solution_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionRequest AWS API Documentation
    #
    class DescribeSolutionRequest < Struct.new(
      :solution_arn)
      include Aws::Structure
    end

    # @!attribute [rw] solution
    #   @return [Types::Solution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionResponse AWS API Documentation
    #
    class DescribeSolutionResponse < Struct.new(
      :solution)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSolutionVersionRequest
    #   data as a hash:
    #
    #       {
    #         solution_version_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] solution_version_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionVersionRequest AWS API Documentation
    #
    class DescribeSolutionVersionRequest < Struct.new(
      :solution_version_arn)
      include Aws::Structure
    end

    # @!attribute [rw] solution_version
    #   @return [Types::SolutionVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/DescribeSolutionVersionResponse AWS API Documentation
    #
    class DescribeSolutionVersionResponse < Struct.new(
      :solution_version)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] event_tracker_arn
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] tracking_id
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/EventTracker AWS API Documentation
    #
    class EventTracker < Struct.new(
      :name,
      :event_tracker_arn,
      :account_id,
      :tracking_id,
      :role_arn,
      :dataset_group_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] event_tracker_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/EventTrackerSummary AWS API Documentation
    #
    class EventTrackerSummary < Struct.new(
      :name,
      :event_tracker_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] feature_transformation_arn
    #   @return [String]
    #
    # @!attribute [rw] default_parameters
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/FeatureTransformation AWS API Documentation
    #
    class FeatureTransformation < Struct.new(
      :name,
      :feature_transformation_arn,
      :default_parameters,
      :creation_date_time,
      :last_updated_date_time,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSolutionMetricsRequest
    #   data as a hash:
    #
    #       {
    #         solution_version_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] solution_version_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/GetSolutionMetricsRequest AWS API Documentation
    #
    class GetSolutionMetricsRequest < Struct.new(
      :solution_version_arn)
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/GetSolutionMetricsResponse AWS API Documentation
    #
    class GetSolutionMetricsResponse < Struct.new(
      :solution_version_arn,
      :metrics)
      include Aws::Structure
    end

    # @note When making an API call, you may pass HPOConfig
    #   data as a hash:
    #
    #       {
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
    #       }
    #
    # @!attribute [rw] hpo_objective
    #   @return [Types::HPOObjective]
    #
    # @!attribute [rw] hpo_resource_config
    #   @return [Types::HPOResourceConfig]
    #
    # @!attribute [rw] algorithm_hyper_parameter_ranges
    #   @return [Types::HyperParameterRanges]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/HPOConfig AWS API Documentation
    #
    class HPOConfig < Struct.new(
      :hpo_objective,
      :hpo_resource_config,
      :algorithm_hyper_parameter_ranges)
      include Aws::Structure
    end

    # @note When making an API call, you may pass HPOObjective
    #   data as a hash:
    #
    #       {
    #         type: "HPOObjectiveType",
    #         metric_name: "MetricName",
    #         metric_regex: "MetricRegex",
    #       }
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   @return [String]
    #
    # @!attribute [rw] metric_regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/HPOObjective AWS API Documentation
    #
    class HPOObjective < Struct.new(
      :type,
      :metric_name,
      :metric_regex)
      include Aws::Structure
    end

    # @note When making an API call, you may pass HPOResourceConfig
    #   data as a hash:
    #
    #       {
    #         max_number_of_training_jobs: "HPOResource",
    #         max_parallel_training_jobs: "HPOResource",
    #       }
    #
    # @!attribute [rw] max_number_of_training_jobs
    #   @return [String]
    #
    # @!attribute [rw] max_parallel_training_jobs
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/HPOResourceConfig AWS API Documentation
    #
    class HPOResourceConfig < Struct.new(
      :max_number_of_training_jobs,
      :max_parallel_training_jobs)
      include Aws::Structure
    end

    # @note When making an API call, you may pass HyperParameterRanges
    #   data as a hash:
    #
    #       {
    #         integer_hyper_parameter_ranges: [
    #           {
    #             name: "ParameterName",
    #             min_value: 1,
    #             max_value: 1,
    #           },
    #         ],
    #         continuous_hyper_parameter_ranges: [
    #           {
    #             name: "ParameterName",
    #             min_value: 1.0,
    #             max_value: 1.0,
    #           },
    #         ],
    #         categorical_hyper_parameter_ranges: [
    #           {
    #             name: "ParameterName",
    #             values: ["CategoricalValue"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] integer_hyper_parameter_ranges
    #   @return [Array<Types::IntegerHyperParameterRange>]
    #
    # @!attribute [rw] continuous_hyper_parameter_ranges
    #   @return [Array<Types::ContinuousHyperParameterRange>]
    #
    # @!attribute [rw] categorical_hyper_parameter_ranges
    #   @return [Array<Types::CategoricalHyperParameterRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/HyperParameterRanges AWS API Documentation
    #
    class HyperParameterRanges < Struct.new(
      :integer_hyper_parameter_ranges,
      :continuous_hyper_parameter_ranges,
      :categorical_hyper_parameter_ranges)
      include Aws::Structure
    end

    # @note When making an API call, you may pass IntegerHyperParameterRange
    #   data as a hash:
    #
    #       {
    #         name: "ParameterName",
    #         min_value: 1,
    #         max_value: 1,
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] min_value
    #   @return [Integer]
    #
    # @!attribute [rw] max_value
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/IntegerHyperParameterRange AWS API Documentation
    #
    class IntegerHyperParameterRange < Struct.new(
      :name,
      :min_value,
      :max_value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCampaignsRequest
    #   data as a hash:
    #
    #       {
    #         solution_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] solution_arn
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListCampaignsRequest AWS API Documentation
    #
    class ListCampaignsRequest < Struct.new(
      :solution_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] campaigns
    #   @return [Array<Types::CampaignSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListCampaignsResponse AWS API Documentation
    #
    class ListCampaignsResponse < Struct.new(
      :campaigns,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetGroupsRequest AWS API Documentation
    #
    class ListDatasetGroupsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_groups
    #   @return [Array<Types::DatasetGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetGroupsResponse AWS API Documentation
    #
    class ListDatasetGroupsResponse < Struct.new(
      :dataset_groups,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetImportJobsRequest
    #   data as a hash:
    #
    #       {
    #         dataset_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] dataset_arn
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetImportJobsRequest AWS API Documentation
    #
    class ListDatasetImportJobsRequest < Struct.new(
      :dataset_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_import_jobs
    #   @return [Array<Types::DatasetImportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetImportJobsResponse AWS API Documentation
    #
    class ListDatasetImportJobsResponse < Struct.new(
      :dataset_import_jobs,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatasetsRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetsRequest AWS API Documentation
    #
    class ListDatasetsRequest < Struct.new(
      :dataset_group_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] datasets
    #   @return [Array<Types::DatasetSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListDatasetsResponse AWS API Documentation
    #
    class ListDatasetsResponse < Struct.new(
      :datasets,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventTrackersRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListEventTrackersRequest AWS API Documentation
    #
    class ListEventTrackersRequest < Struct.new(
      :dataset_group_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] event_trackers
    #   @return [Array<Types::EventTrackerSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListEventTrackersResponse AWS API Documentation
    #
    class ListEventTrackersResponse < Struct.new(
      :event_trackers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecipesRequest
    #   data as a hash:
    #
    #       {
    #         recipe_provider: "SERVICE", # accepts SERVICE, BYOR, ALL
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] recipe_provider
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListRecipesRequest AWS API Documentation
    #
    class ListRecipesRequest < Struct.new(
      :recipe_provider,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] recipes
    #   @return [Array<Types::RecipeSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListRecipesResponse AWS API Documentation
    #
    class ListRecipesResponse < Struct.new(
      :recipes,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSchemasRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSchemasRequest AWS API Documentation
    #
    class ListSchemasRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] schemas
    #   @return [Array<Types::DatasetSchemaSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSchemasResponse AWS API Documentation
    #
    class ListSchemasResponse < Struct.new(
      :schemas,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSolutionVersionsRequest
    #   data as a hash:
    #
    #       {
    #         solution_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] solution_arn
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutionVersionsRequest AWS API Documentation
    #
    class ListSolutionVersionsRequest < Struct.new(
      :solution_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] solution_versions
    #   @return [Array<Types::SolutionVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutionVersionsResponse AWS API Documentation
    #
    class ListSolutionVersionsResponse < Struct.new(
      :solution_versions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSolutionsRequest
    #   data as a hash:
    #
    #       {
    #         dataset_group_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutionsRequest AWS API Documentation
    #
    class ListSolutionsRequest < Struct.new(
      :dataset_group_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] solutions
    #   @return [Array<Types::SolutionSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/ListSolutionsResponse AWS API Documentation
    #
    class ListSolutionsResponse < Struct.new(
      :solutions,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] recipe_arn
    #   @return [String]
    #
    # @!attribute [rw] algorithm_arn
    #   @return [String]
    #
    # @!attribute [rw] feature_transformation_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] recipe_type
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Recipe AWS API Documentation
    #
    class Recipe < Struct.new(
      :name,
      :recipe_arn,
      :algorithm_arn,
      :feature_transformation_arn,
      :status,
      :description,
      :creation_date_time,
      :recipe_type,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] recipe_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/RecipeSummary AWS API Documentation
    #
    class RecipeSummary < Struct.new(
      :name,
      :recipe_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] solution_arn
    #   @return [String]
    #
    # @!attribute [rw] perform_hpo
    #   @return [Boolean]
    #
    # @!attribute [rw] perform_auto_ml
    #   @return [Boolean]
    #
    # @!attribute [rw] recipe_arn
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   @return [String]
    #
    # @!attribute [rw] solution_config
    #   @return [Types::SolutionConfig]
    #
    # @!attribute [rw] auto_ml_result
    #   @return [Types::AutoMLResult]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @!attribute [rw] latest_solution_version
    #   @return [Types::SolutionVersionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/Solution AWS API Documentation
    #
    class Solution < Struct.new(
      :name,
      :solution_arn,
      :perform_hpo,
      :perform_auto_ml,
      :recipe_arn,
      :dataset_group_arn,
      :event_type,
      :solution_config,
      :auto_ml_result,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :latest_solution_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SolutionConfig
    #   data as a hash:
    #
    #       {
    #         event_value_threshold: "EventValueThreshold",
    #         hpo_config: {
    #           hpo_objective: {
    #             type: "HPOObjectiveType",
    #             metric_name: "MetricName",
    #             metric_regex: "MetricRegex",
    #           },
    #           hpo_resource_config: {
    #             max_number_of_training_jobs: "HPOResource",
    #             max_parallel_training_jobs: "HPOResource",
    #           },
    #           algorithm_hyper_parameter_ranges: {
    #             integer_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 min_value: 1,
    #                 max_value: 1,
    #               },
    #             ],
    #             continuous_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 min_value: 1.0,
    #                 max_value: 1.0,
    #               },
    #             ],
    #             categorical_hyper_parameter_ranges: [
    #               {
    #                 name: "ParameterName",
    #                 values: ["CategoricalValue"],
    #               },
    #             ],
    #           },
    #         },
    #         algorithm_hyper_parameters: {
    #           "ParameterName" => "ParameterValue",
    #         },
    #         feature_transformation_parameters: {
    #           "ParameterName" => "ParameterValue",
    #         },
    #         auto_ml_config: {
    #           metric_name: "MetricName",
    #           recipe_list: ["Arn"],
    #         },
    #       }
    #
    # @!attribute [rw] event_value_threshold
    #   @return [String]
    #
    # @!attribute [rw] hpo_config
    #   @return [Types::HPOConfig]
    #
    # @!attribute [rw] algorithm_hyper_parameters
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] feature_transformation_parameters
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] auto_ml_config
    #   @return [Types::AutoMLConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/SolutionConfig AWS API Documentation
    #
    class SolutionConfig < Struct.new(
      :event_value_threshold,
      :hpo_config,
      :algorithm_hyper_parameters,
      :feature_transformation_parameters,
      :auto_ml_config)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] solution_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/SolutionSummary AWS API Documentation
    #
    class SolutionSummary < Struct.new(
      :name,
      :solution_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   @return [String]
    #
    # @!attribute [rw] solution_arn
    #   @return [String]
    #
    # @!attribute [rw] perform_hpo
    #   @return [Boolean]
    #
    # @!attribute [rw] perform_auto_ml
    #   @return [Boolean]
    #
    # @!attribute [rw] recipe_arn
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   @return [String]
    #
    # @!attribute [rw] dataset_group_arn
    #   @return [String]
    #
    # @!attribute [rw] solution_config
    #   @return [Types::SolutionConfig]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/SolutionVersion AWS API Documentation
    #
    class SolutionVersion < Struct.new(
      :solution_version_arn,
      :solution_arn,
      :perform_hpo,
      :perform_auto_ml,
      :recipe_arn,
      :event_type,
      :dataset_group_arn,
      :solution_config,
      :status,
      :failure_reason,
      :creation_date_time,
      :last_updated_date_time)
      include Aws::Structure
    end

    # @!attribute [rw] solution_version_arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/SolutionVersionSummary AWS API Documentation
    #
    class SolutionVersionSummary < Struct.new(
      :solution_version_arn,
      :status,
      :creation_date_time,
      :last_updated_date_time,
      :failure_reason)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCampaignRequest
    #   data as a hash:
    #
    #       {
    #         campaign_arn: "Arn", # required
    #         solution_version_arn: "Arn",
    #         min_provisioned_tps: 1,
    #       }
    #
    # @!attribute [rw] campaign_arn
    #   @return [String]
    #
    # @!attribute [rw] solution_version_arn
    #   @return [String]
    #
    # @!attribute [rw] min_provisioned_tps
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateCampaignRequest AWS API Documentation
    #
    class UpdateCampaignRequest < Struct.new(
      :campaign_arn,
      :solution_version_arn,
      :min_provisioned_tps)
      include Aws::Structure
    end

    # @!attribute [rw] campaign_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateCampaignResponse AWS API Documentation
    #
    class UpdateCampaignResponse < Struct.new(
      :campaign_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDatasetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_arn: "Arn", # required
    #         schema_arn: "Arn",
    #       }
    #
    # @!attribute [rw] dataset_arn
    #   @return [String]
    #
    # @!attribute [rw] schema_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateDatasetRequest AWS API Documentation
    #
    class UpdateDatasetRequest < Struct.new(
      :dataset_arn,
      :schema_arn)
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-2018-05-22/UpdateDatasetResponse AWS API Documentation
    #
    class UpdateDatasetResponse < Struct.new(
      :dataset_arn)
      include Aws::Structure
    end

  end
end
