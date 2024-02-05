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
  module Compute
    module Property
      class MachineTypeAccelerators
        attr_reader :guest_accelerator_type

        attr_reader :guest_accelerator_count

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @guest_accelerator_type = args['guestAcceleratorType']
          @guest_accelerator_count = args['guestAcceleratorCount']
        end

        def to_s
          "#{@parent_identifier} MachineTypeAccelerators"
        end
      end

      class MachineTypeAcceleratorsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return MachineTypeAccelerators.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| MachineTypeAccelerators.new(v, parent_identifier) }
        end
      end
    end
  end
end