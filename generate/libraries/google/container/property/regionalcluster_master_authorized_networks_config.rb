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
require 'google/container/property/regionalcluster_master_authorized_networks_config_cidr_blocks'
module GoogleInSpec
  module Container
    module Property
      class RegionalClusterMasterAuthorizedNetworksConfig
        attr_reader :args

        attr_reader :enabled

        attr_reader :cidr_blocks

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @enabled = args['enabled']
          @cidr_blocks = GoogleInSpec::Container::Property::RegionalClusterMasterAuthorizedNetworksConfigCidrBlocksArray.parse(args['cidrBlocks'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionalClusterMasterAuthorizedNetworksConfig"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'enabled' => ->(x, path) { x.nil? ? [] : ["its('#{path}.enabled') { should cmp #{x.inspect} }"] },
            'cidr_blocks' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.cidr_blocks') { should include '#{single.to_json}' }" } },
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
    end
  end
end
