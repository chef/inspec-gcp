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
require 'google/compute/property/globalforwardingrule_metadata_filters_filter_labels'
module GoogleInSpec
  module Compute
    module Property
      class GlobalForwardingRuleMetadataFilters
        attr_reader :args

        attr_reader :filter_match_criteria

        attr_reader :filter_labels

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @filter_match_criteria = args['filterMatchCriteria']
          @filter_labels = GoogleInSpec::Compute::Property::GlobalForwardingRuleMetadataFiltersFilterLabelsArray.parse(args['filterLabels'], to_s)
        end

        def to_s
          "#{@parent_identifier} GlobalForwardingRuleMetadataFilters"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'filter_match_criteria' => ->(x, path) { x.nil? ? [] : ["its('#{path}.filter_match_criteria') { should cmp #{x.inspect} }"] },
            'filter_labels' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.filter_labels') { should include '#{single.to_json}' }" } },
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

      class GlobalForwardingRuleMetadataFiltersArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return GlobalForwardingRuleMetadataFilters.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| GlobalForwardingRuleMetadataFilters.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| GlobalForwardingRuleMetadataFilters.un_parse(v, path) }
        end
      end
    end
  end
end
