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
      class FirewallDenied
        attr_reader :args

        attr_reader :ip_protocol

        attr_reader :ports

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @ip_protocol = args['IPProtocol']
          @ports = args['ports']
        end

        def to_s
          "#{@parent_identifier} FirewallDenied"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'ip_protocol' => ->(x, path) { x.nil? ? [] : ["its('#{path}.ip_protocol') { should cmp #{x.inspect} }"] },
            'ports' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.ports') { should include #{single.inspect} }" } },
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

      class FirewallDeniedArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return FirewallDenied.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| FirewallDenied.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| FirewallDenied.un_parse(v, path) }
        end
      end
    end
  end
end
