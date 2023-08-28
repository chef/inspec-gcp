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
require 'google/datalossprevention/property/jobtrigger_inspect_job_storage_config_big_query_options_table_reference'
module GoogleInSpec
  module DataLossPrevention
    module Property
      class JobTriggerInspectJobStorageConfigBigQueryOptions
        attr_reader :table_reference

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @table_reference = GoogleInSpec::DataLossPrevention::Property::JobTriggerInspectJobStorageConfigBigQueryOptionsTableReference.new(args['tableReference'], to_s)
        end

        def to_s
          "#{@parent_identifier} JobTriggerInspectJobStorageConfigBigQueryOptions"
        end
      end
    end
  end
end