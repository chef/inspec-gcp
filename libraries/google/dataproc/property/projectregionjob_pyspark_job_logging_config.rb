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
require 'google/dataproc/property/projectregionjob_pyspark_job_logging_config_driver_log_levels'
module GoogleInSpec
  module Dataproc
    module Property
      class ProjectRegionJobPysparkJobLoggingConfig
        attr_reader :driver_log_levels

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @driver_log_levels = GoogleInSpec::Dataproc::Property::ProjectRegionJobPysparkJobLoggingConfigDriverLogLevels.new(args['driverLogLevels'], to_s)
        end

        def to_s
          "#{@parent_identifier} ProjectRegionJobPysparkJobLoggingConfig"
        end
      end
    end
  end
end
