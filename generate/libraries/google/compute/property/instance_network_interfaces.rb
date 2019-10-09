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
require 'google/compute/property/instance_network_interfaces_access_configs'
require 'google/compute/property/instance_network_interfaces_alias_ip_ranges'
module GoogleInSpec
  module Compute
    module Property
      class InstanceNetworkInterfaces
        attr_reader :args

        attr_reader :access_configs

        attr_reader :alias_ip_ranges

        attr_reader :name

        attr_reader :network

        attr_reader :network_ip

        attr_reader :subnetwork

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @access_configs = GoogleInSpec::Compute::Property::InstanceNetworkInterfacesAccessConfigsArray.parse(args['accessConfigs'], to_s)
          @alias_ip_ranges = GoogleInSpec::Compute::Property::InstanceNetworkInterfacesAliasIpRangesArray.parse(args['aliasIpRanges'], to_s)
          @name = args['name']
          @network = args['network']
          @network_ip = args['networkIP']
          @subnetwork = args['subnetwork']
        end

        def to_s
          "#{@parent_identifier} InstanceNetworkInterfaces"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'access_configs' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.access_configs') { should include '#{single.to_json}' }" } },
            'alias_ip_ranges' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.alias_ip_ranges') { should include '#{single.to_json}' }" } },
            'name' => ->(x, path) { x.nil? ? [] : ["its('#{path}.name') { should cmp #{x.inspect} }"] },
            'network' => ->(x, path) { x.nil? ? [] : ["its('#{path}.network') { should cmp #{x.inspect} }"] },
            'network_ip' => ->(x, path) { x.nil? ? [] : ["its('#{path}.network_ip') { should cmp #{x.inspect} }"] },
            'subnetwork' => ->(x, path) { x.nil? ? [] : ["its('#{path}.subnetwork') { should cmp #{x.inspect} }"] },
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

      class InstanceNetworkInterfacesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return InstanceNetworkInterfaces.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| InstanceNetworkInterfaces.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| InstanceNetworkInterfaces.un_parse(v, path) }
        end
      end
    end
  end
end
