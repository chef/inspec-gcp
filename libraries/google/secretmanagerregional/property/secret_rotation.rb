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
  module SecretManagerRegional
    module Property
      class SecretRotation
        attr_reader :next_rotation_time

        attr_reader :rotation_period

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @next_rotation_time = args['nextRotationTime']
          @rotation_period = args['rotationPeriod']
        end

        def to_s
          "#{@parent_identifier} SecretRotation"
        end
      end
    end
  end
end
