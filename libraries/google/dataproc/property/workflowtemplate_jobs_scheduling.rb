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
      class WorkflowTemplateJobsScheduling
        attr_reader :max_failures_per_hour

        attr_reader :max_failures_total

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @max_failures_per_hour = args['maxFailuresPerHour']
          @max_failures_total = args['maxFailuresTotal']
        end

        def to_s
          "#{@parent_identifier} WorkflowTemplateJobsScheduling"
        end
      end
    end
  end
end
