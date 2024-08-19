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
      class SessionRuntimeInfoApproximateUsage
        attr_reader :milli_dcu_seconds

        attr_reader :shuffle_storage_gb_seconds

        attr_reader :milli_accelerator_seconds

        attr_reader :accelerator_type

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @milli_dcu_seconds = args['milliDcuSeconds']
          @shuffle_storage_gb_seconds = args['shuffleStorageGbSeconds']
          @milli_accelerator_seconds = args['milliAcceleratorSeconds']
          @accelerator_type = args['acceleratorType']
        end

        def to_s
          "#{@parent_identifier} SessionRuntimeInfoApproximateUsage"
        end
      end
    end
  end
end
