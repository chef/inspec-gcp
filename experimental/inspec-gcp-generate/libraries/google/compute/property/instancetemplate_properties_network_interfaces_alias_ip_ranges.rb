# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
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
      class InstanceTemplatePropertiesNetworkInterfacesAliasIpRanges
        attr_reader :args

        attr_reader :ip_cidr_range

        attr_reader :subnetwork_range_name

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @ip_cidr_range = args['ipCidrRange']
          @subnetwork_range_name = args['subnetworkRangeName']
        end

        def to_s
          "#{@parent_identifier} InstanceTemplatePropertiesNetworkInterfacesAliasIpRanges"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'ip_cidr_range' => ->(x, path) { x.nil? ? [] : ["its('#{path}.ip_cidr_range') { should cmp #{x.inspect} }"] },
            'subnetwork_range_name' => ->(x, path) { x.nil? ? [] : ["its('#{path}.subnetwork_range_name') { should cmp #{x.inspect} }"] },
          }
          way_to_parse.map do |k, v|
            v.call(item.method(k).call, path)
          end
        end

        def to_json
          @args.to_json
        end

        def self.from_json string
          data = JSON.load string
          self.new data
        end

        # other is a string representation of this object
        def ==(other)
          return @args == JSON.load(other)
        end
      end

      class InstanceTemplatePropertiesNetworkInterfacesAliasIpRangesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return InstanceTemplatePropertiesNetworkInterfacesAliasIpRanges.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| InstanceTemplatePropertiesNetworkInterfacesAliasIpRanges.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| InstanceTemplatePropertiesNetworkInterfacesAliasIpRanges.un_parse(v, path) }
        end
      end
    end
  end
end
