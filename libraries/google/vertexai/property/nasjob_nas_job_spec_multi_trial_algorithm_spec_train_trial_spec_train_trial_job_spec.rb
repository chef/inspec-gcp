# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    Type: MMv1     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
require 'google/vertexai/property/nasjob_nas_job_spec_multi_trial_algorithm_spec_train_trial_spec_train_trial_job_spec_base_output_directory'
require 'google/vertexai/property/nasjob_nas_job_spec_multi_trial_algorithm_spec_train_trial_spec_train_trial_job_spec_scheduling'
require 'google/vertexai/property/nasjob_nas_job_spec_multi_trial_algorithm_spec_train_trial_spec_train_trial_job_spec_worker_pool_specs'
module GoogleInSpec
  module VertexAI
    module Property
      class NasJobNasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecTrainTrialJobSpec
        attr_reader :worker_pool_specs

        attr_reader :enable_web_access

        attr_reader :tensorboard

        attr_reader :experiment

        attr_reader :experiment_run

        attr_reader :scheduling

        attr_reader :enable_dashboard_access

        attr_reader :service_account

        attr_reader :base_output_directory

        attr_reader :reserved_ip_ranges

        attr_reader :network

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @worker_pool_specs = GoogleInSpec::VertexAI::Property::NasJobNasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecTrainTrialJobSpecWorkerPoolSpecsArray.parse(args['workerPoolSpecs'], to_s)
          @enable_web_access = args['enableWebAccess']
          @tensorboard = args['tensorboard']
          @experiment = args['experiment']
          @experiment_run = args['experimentRun']
          @scheduling = GoogleInSpec::VertexAI::Property::NasJobNasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecTrainTrialJobSpecScheduling.new(args['scheduling'], to_s)
          @enable_dashboard_access = args['enableDashboardAccess']
          @service_account = args['serviceAccount']
          @base_output_directory = GoogleInSpec::VertexAI::Property::NasJobNasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecTrainTrialJobSpecBaseOutputDirectory.new(args['baseOutputDirectory'], to_s)
          @reserved_ip_ranges = args['reservedIpRanges']
          @network = args['network']
        end

        def to_s
          "#{@parent_identifier} NasJobNasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecTrainTrialJobSpec"
        end
      end
    end
  end
end