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
require 'google/dlp/property/jobtrigger_inspect_job_actions_save_findings'
require 'google/dlp/property/jobtrigger_inspect_job_actions_save_findings_output_config'
require 'google/dlp/property/jobtrigger_inspect_job_actions_save_findings_output_config_table'
module GoogleInSpec
  module DLP
    module Property
      class JobTriggerInspectJobActions
        attr_reader :save_findings

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @save_findings = GoogleInSpec::DLP::Property::JobTriggerInspectJobActionsSaveFindings.new(args['saveFindings'], to_s)
        end

        def to_s
          "#{@parent_identifier} JobTriggerInspectJobActions"
        end
      end

      class JobTriggerInspectJobActionsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return JobTriggerInspectJobActions.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| JobTriggerInspectJobActions.new(v, parent_identifier) }
        end
      end
    end
  end
end