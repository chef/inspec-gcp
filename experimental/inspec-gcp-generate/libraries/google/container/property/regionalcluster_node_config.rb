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
require 'google/container/property/regionalcluster_node_config_accelerators'
require 'google/container/property/regionalcluster_node_config_taints'
module GoogleInSpec
  module Container
    module Property
      class RegionalClusterNodeConfig
        attr_reader :args

        attr_reader :machine_type

        attr_reader :disk_size_gb

        attr_reader :oauth_scopes

        attr_reader :service_account

        attr_reader :metadata

        attr_reader :image_type

        attr_reader :labels

        attr_reader :local_ssd_count

        attr_reader :tags

        attr_reader :preemptible

        attr_reader :accelerators

        attr_reader :disk_type

        attr_reader :min_cpu_platform

        attr_reader :taints

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @machine_type = args['machineType']
          @disk_size_gb = args['diskSizeGb']
          @oauth_scopes = args['oauthScopes']
          @service_account = args['serviceAccount']
          @metadata = args['metadata']
          @image_type = args['imageType']
          @labels = args['labels']
          @local_ssd_count = args['localSsdCount']
          @tags = args['tags']
          @preemptible = args['preemptible']
          @accelerators = GoogleInSpec::Container::Property::RegionalClusterNodeConfigAcceleratorsArray.parse(args['accelerators'], to_s)
          @disk_type = args['diskType']
          @min_cpu_platform = args['minCpuPlatform']
          @taints = GoogleInSpec::Container::Property::RegionalClusterNodeConfigTaintsArray.parse(args['taints'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionalClusterNodeConfig"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'machine_type' => ->(x, path) { x.nil? ? [] : ["its('#{path}.machine_type') { should cmp #{x.inspect} }"] },
            'disk_size_gb' => ->(x, path) { x.nil? ? [] : ["its('#{path}.disk_size_gb') { should cmp #{x.inspect} }"] },
            'oauth_scopes' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.oauth_scopes') { should include #{single.inspect} }" } },
            'service_account' => ->(x, path) { x.nil? ? [] : ["its('#{path}.service_account') { should cmp #{x.inspect} }"] },
            'metadata' => ->(x, path) { x.nil? ? [] : x.map { |k, v| "its('#{path}.metadata') { should include(#{k.inspect} => #{v.inspect}) }" } },
            'image_type' => ->(x, path) { x.nil? ? [] : ["its('#{path}.image_type') { should cmp #{x.inspect} }"] },
            'labels' => ->(x, path) { x.nil? ? [] : x.map { |k, v| "its('#{path}.labels') { should include(#{k.inspect} => #{v.inspect}) }" } },
            'local_ssd_count' => ->(x, path) { x.nil? ? [] : ["its('#{path}.local_ssd_count') { should cmp #{x.inspect} }"] },
            'tags' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.tags') { should include #{single.inspect} }" } },
            'preemptible' => ->(x, path) { x.nil? ? [] : ["its('#{path}.preemptible') { should cmp #{x.inspect} }"] },
            'accelerators' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.accelerators') { should include '#{single.to_json}' }" } },
            'disk_type' => ->(x, path) { x.nil? ? [] : ["its('#{path}.disk_type') { should cmp #{x.inspect} }"] },
            'min_cpu_platform' => ->(x, path) { x.nil? ? [] : ["its('#{path}.min_cpu_platform') { should cmp #{x.inspect} }"] },
            'taints' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.taints') { should include '#{single.to_json}' }" } },
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
