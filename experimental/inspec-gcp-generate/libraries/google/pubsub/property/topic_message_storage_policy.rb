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
  module Pubsub
    module Property
      class TopicMessageStoragePolicy
        attr_reader :args

        attr_reader :allowed_persistence_regions

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @allowed_persistence_regions = args['allowedPersistenceRegions']
        end

        def to_s
          "#{@parent_identifier} TopicMessageStoragePolicy"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'allowed_persistence_regions' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.allowed_persistence_regions') { should include #{single.inspect} }" } },
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
