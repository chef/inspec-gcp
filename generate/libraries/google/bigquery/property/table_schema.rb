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
require 'google/bigquery/property/table_schema_fields'
module GoogleInSpec
  module BigQuery
    module Property
      class TableSchema
        attr_reader :arguments

        attr_reader :fields

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @fields = GoogleInSpec::BigQuery::Property::TableSchemaFieldsArray.parse(arguments['fields'], to_s)
        end

        def to_s
          "#{@parent_identifier} TableSchema"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'fields' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.fields') { should include '#{single.to_json}' }" } },
          }
          way_to_parse.map do |k, v|
            v.call(item.method(k).call, current_path)
          end
        end

        def to_json(*_args)
          @arguments.to_json
        end

        # other is a string representation of this object
        def ==(other)
          @arguments == JSON.parse(other)
        end
      end
    end
  end
end
