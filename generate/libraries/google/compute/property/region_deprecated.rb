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
      class RegionDeprecated
        attr_reader :args

        attr_reader :deleted

        attr_reader :deprecated

        attr_reader :obsolete

        attr_reader :replacement

        attr_reader :state

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @deleted = parse_time_string(args['deleted'])
          @deprecated = parse_time_string(args['deprecated'])
          @obsolete = parse_time_string(args['obsolete'])
          @replacement = args['replacement']
          @state = args['state']
        end

        def to_s
          "#{@parent_identifier} RegionDeprecated"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'deleted' => ->(x, path) { x.nil? ? [] : ["its('#{path}.deleted.to_s') { should cmp '#{x.inspect}' }"] },
            'deprecated' => ->(x, path) { x.nil? ? [] : ["its('#{path}.deprecated.to_s') { should cmp '#{x.inspect}' }"] },
            'obsolete' => ->(x, path) { x.nil? ? [] : ["its('#{path}.obsolete.to_s') { should cmp '#{x.inspect}' }"] },
            'replacement' => ->(x, path) { x.nil? ? [] : ["its('#{path}.replacement') { should cmp #{x.inspect} }"] },
            'state' => ->(x, path) { x.nil? ? [] : ["its('#{path}.state') { should cmp #{x.inspect} }"] },
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
