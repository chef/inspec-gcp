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
  module BigQuery
    module Property
      class DatasetAccessView
        attr_reader :arguments

        attr_reader :dataset_id

        attr_reader :project_id

        attr_reader :table_id

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @dataset_id = arguments['datasetId']
          @project_id = arguments['projectId']
          @table_id = arguments['tableId']
        end

        def to_s
          "#{@parent_identifier} DatasetAccessView"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'dataset_id' => ->(x, path) { x.nil? ? [] : ["its('#{path}.dataset_id') { should cmp #{x.inspect} }"] },
            'project_id' => ->(x, path) { x.nil? ? [] : ["its('#{path}.project_id') { should cmp #{x.inspect} }"] },
            'table_id' => ->(x, path) { x.nil? ? [] : ["its('#{path}.table_id') { should cmp #{x.inspect} }"] },
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
