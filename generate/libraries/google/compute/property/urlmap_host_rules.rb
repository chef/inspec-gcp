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
      class UrlMapHostRules
        attr_reader :args

        attr_reader :description

        attr_reader :hosts

        attr_reader :path_matcher

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @description = args['description']
          @hosts = args['hosts']
          @path_matcher = args['pathMatcher']
        end

        def to_s
          "#{@parent_identifier} UrlMapHostRules"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'description' => ->(x, path) { x.nil? ? [] : ["its('#{path}.description') { should cmp #{x.inspect} }"] },
            'hosts' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.hosts') { should include #{single.inspect} }" } },
            'path_matcher' => ->(x, path) { x.nil? ? [] : ["its('#{path}.path_matcher') { should cmp #{x.inspect} }"] },
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

      class UrlMapHostRulesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return UrlMapHostRules.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| UrlMapHostRules.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| UrlMapHostRules.un_parse(v, path) }
        end
      end
    end
  end
end
