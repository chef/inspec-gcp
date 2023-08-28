# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    Type: MMv1     ***
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
require 'google/datalossprevention/property/storedinfotype_large_custom_dictionary_big_query_field_field'
require 'google/datalossprevention/property/storedinfotype_large_custom_dictionary_big_query_field_table'
module GoogleInSpec
  module DataLossPrevention
    module Property
      class StoredInfoTypeLargeCustomDictionaryBigQueryField
        attr_reader :table

        attr_reader :field

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @table = GoogleInSpec::DataLossPrevention::Property::StoredInfoTypeLargeCustomDictionaryBigQueryFieldTable.new(args['table'], to_s)
          @field = GoogleInSpec::DataLossPrevention::Property::StoredInfoTypeLargeCustomDictionaryBigQueryFieldField.new(args['field'], to_s)
        end

        def to_s
          "#{@parent_identifier} StoredInfoTypeLargeCustomDictionaryBigQueryField"
        end
      end
    end
  end
end