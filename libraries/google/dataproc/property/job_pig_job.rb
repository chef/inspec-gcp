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
require 'google/dataproc/property/job_pig_job_logging_config'
require 'google/dataproc/property/job_pig_job_logging_config_driver_log_levels'
require 'google/dataproc/property/job_pig_job_properties'
require 'google/dataproc/property/job_pig_job_query_list'
require 'google/dataproc/property/job_pig_job_script_variables'
module GoogleInSpec
  module Dataproc
    module Property
      class JobPigJob
        attr_reader :query_file_uri

        attr_reader :query_list

        attr_reader :continue_on_failure

        attr_reader :script_variables

        attr_reader :properties

        attr_reader :jar_file_uris

        attr_reader :logging_config

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @query_file_uri = args['queryFileUri']
          @query_list = GoogleInSpec::Dataproc::Property::JobPigJobQueryList.new(args['queryList'], to_s)
          @continue_on_failure = args['continueOnFailure']
          @script_variables = GoogleInSpec::Dataproc::Property::JobPigJobScriptVariables.new(args['scriptVariables'], to_s)
          @properties = GoogleInSpec::Dataproc::Property::JobPigJobProperties.new(args['properties'], to_s)
          @jar_file_uris = args['jarFileUris']
          @logging_config = GoogleInSpec::Dataproc::Property::JobPigJobLoggingConfig.new(args['loggingConfig'], to_s)
        end

        def to_s
          "#{@parent_identifier} JobPigJob"
        end
      end
    end
  end
end
