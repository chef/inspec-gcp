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
      class InterconnectCircuitInfos
        attr_reader :google_circuit_id

        attr_reader :google_demarc_id

        attr_reader :customer_demarc_id

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @google_circuit_id = args['googleCircuitId']
          @google_demarc_id = args['googleDemarcId']
          @customer_demarc_id = args['customerDemarcId']
        end

        def to_s
          "#{@parent_identifier} InterconnectCircuitInfos"
        end
      end

      class InterconnectCircuitInfosArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return InterconnectCircuitInfos.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| InterconnectCircuitInfos.new(v, parent_identifier) }
        end
      end
    end
  end
end
