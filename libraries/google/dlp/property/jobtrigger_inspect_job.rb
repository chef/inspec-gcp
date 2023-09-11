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
require 'google/dlp/property/jobtrigger_inspect_job_actions'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config_big_query_options'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config_big_query_options_table_reference'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config_cloud_storage_options'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config_cloud_storage_options_file_set'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config_cloud_storage_options_file_set_regex_file_set'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config_datastore_options'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config_datastore_options_kind'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config_datastore_options_partition_id'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config_timespan_config'
require 'google/dlp/property/jobtrigger_inspect_job_storage_config_timespan_config_timestamp_field'
module GoogleInSpec
  module DLP
    module Property
      class JobTriggerInspectJob
        attr_reader :inspect_template_name

        attr_reader :storage_config

        attr_reader :actions

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @inspect_template_name = args['inspectTemplateName']
          @storage_config = GoogleInSpec::DLP::Property::JobTriggerInspectJobStorageConfig.new(args['storageConfig'], to_s)
          @actions = GoogleInSpec::DLP::Property::JobTriggerInspectJobActionsArray.parse(args['actions'], to_s)
        end

        def to_s
          "#{@parent_identifier} JobTriggerInspectJob"
        end
      end
    end
  end
end