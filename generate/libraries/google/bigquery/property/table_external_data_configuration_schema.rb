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
require 'google/bigquery/property/table_external_data_configuration_schema_fields'
module GoogleInSpec
  module BigQuery
    module Property
      class TableExternalDataConfigurationSchema
        attr_reader :args

        attr_reader :fields

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @fields = GoogleInSpec::BigQuery::Property::TableExternalDataConfigurationSchemaFieldsArray.parse(args['fields'], to_s)
        end

        def to_s
          "#{@parent_identifier} TableExternalDataConfigurationSchema"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'fields' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.fields') { should include '#{single.to_json}' }" } },
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
