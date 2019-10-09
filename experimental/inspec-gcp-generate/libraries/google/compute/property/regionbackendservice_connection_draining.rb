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
      class RegionBackendServiceConnectionDraining
        attr_reader :args

        attr_reader :draining_timeout_sec

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @draining_timeout_sec = args['drainingTimeoutSec']
        end

        def to_s
          "#{@parent_identifier} RegionBackendServiceConnectionDraining"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'draining_timeout_sec' => ->(x, path) { x.nil? ? [] : ["its('#{path}.draining_timeout_sec') { should cmp #{x.inspect} }"] },
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
