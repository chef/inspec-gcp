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
require 'gcp_backend'
class Datasets < GcpResourceBase
  name 'google_bigquery_datasets'
  desc 'Dataset plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:dataset_references, field: :dataset_reference)
  filter_table_config.add(:default_partition_expiration_ms, field: :default_partition_expiration_ms)
  filter_table_config.add(:etags, field: :etag)
  filter_table_config.add(:friendly_names, field: :friendly_name)
  filter_table_config.add(:ids, field: :id)
  filter_table_config.add(:labels, field: :labels)
  filter_table_config.add(:locations, field: :location)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('datasets')
  end

  def fetch_wrapped_resource(wrap_path)
    # fetch_resource returns an array of responses (to handle pagination)
    result = @connection.fetch_all(product_url, resource_base_url, @params, 'Get')
    return if result.nil?

    # Conversion of string -> object hash to symbol -> object hash that InSpec needs
    converted = []
    result.each do |response|
      next if response.nil? || !response.key?(wrap_path)
      response[wrap_path].each do |hash|
        hash_with_symbols = {}
        hash.each_key do |key|
          name, value = transform(key, hash)
          hash_with_symbols[name] = value
        end
        converted.push(hash_with_symbols)
      end
    end

    converted
  end

  def transform(key, value)
    return transformers[key].call(value) if transformers.key?(key)

    [key.to_sym, value]
  end

  def transformers
    {
      'datasetReference' => ->(obj) { return :dataset_reference, GoogleInSpec::BigQuery::Property::DatasetDatasetReference.new(obj['datasetReference'], to_s) },
      'defaultPartitionExpirationMs' => ->(obj) { return :default_partition_expiration_ms, obj['defaultPartitionExpirationMs'] },
      'etag' => ->(obj) { return :etag, obj['etag'] },
      'friendlyName' => ->(obj) { return :friendly_name, obj['friendlyName'] },
      'id' => ->(obj) { return :id, obj['id'] },
      'labels' => ->(obj) { return :labels, obj['labels'] },
      'location' => ->(obj) { return :location, obj['location'] },
    }
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  private

  def product_url
    'https://www.googleapis.com/bigquery/v2/'
  end

  def resource_base_url
    'projects/{{project}}/datasets'
  end
end
