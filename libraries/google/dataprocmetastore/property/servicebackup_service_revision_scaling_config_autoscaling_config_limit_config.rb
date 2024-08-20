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
  module DataprocMetastore
    module Property
      class ServiceBackupServiceRevisionScalingConfigAutoscalingConfigLimitConfig
        attr_reader :max_scaling_factor

        attr_reader :min_scaling_factor

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @max_scaling_factor = args['maxScalingFactor']
          @min_scaling_factor = args['minScalingFactor']
        end

        def to_s
          "#{@parent_identifier} ServiceBackupServiceRevisionScalingConfigAutoscalingConfigLimitConfig"
        end
      end
    end
  end
end
