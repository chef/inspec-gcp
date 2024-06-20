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
module GoogleInSpec
  module Dataproc
    module Property
      class WorkflowTemplatePlacementManagedClusterConfigInitializationActions
        attr_reader :executable_file

        attr_reader :execution_timeout

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @executable_file = args['executableFile']
          @execution_timeout = args['executionTimeout']
        end

        def to_s
          "#{@parent_identifier} WorkflowTemplatePlacementManagedClusterConfigInitializationActions"
        end
      end

      class WorkflowTemplatePlacementManagedClusterConfigInitializationActionsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return WorkflowTemplatePlacementManagedClusterConfigInitializationActions.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| WorkflowTemplatePlacementManagedClusterConfigInitializationActions.new(v, parent_identifier) }
        end
      end
    end
  end
end
