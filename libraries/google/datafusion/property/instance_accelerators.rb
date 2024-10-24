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
  module DataFusion
    module Property
      class InstanceAccelerators
        attr_reader :accelerator_type

        attr_reader :state

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @accelerator_type = args['acceleratorType']
          @state = args['state']
        end

        def to_s
          "#{@parent_identifier} InstanceAccelerators"
        end
      end

      class InstanceAcceleratorsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return InstanceAccelerators.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| InstanceAccelerators.new(v, parent_identifier) }
        end
      end
    end
  end
end