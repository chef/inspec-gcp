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
class ComputeTargetHttpProxys < GcpResourceBase
  name 'google_compute_target_http_proxies'
  desc 'TargetHttpProxy plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:creation_timestamps, field: :creation_timestamp)
  filter_table_config.add(:descriptions, field: :description)
  filter_table_config.add(:ids, field: :id)
  filter_table_config.add(:names, field: :name)
  filter_table_config.add(:url_maps, field: :url_map)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('items')
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
      'creationTimestamp' => ->(obj) { return :creation_timestamp, parse_time_string(obj['creationTimestamp']) },
      'description' => ->(obj) { return :description, obj['description'] },
      'id' => ->(obj) { return :id, obj['id'] },
      'name' => ->(obj) { return :name, obj['name'] },
      'urlMap' => ->(obj) { return :url_map, obj['urlMap'] },
    }
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def dump(path)
    individual_url = 't'
    params = individual_url.scan(/({{)(\w+)(}})/).map { |arr| arr[1] }

    my_result = []
    i = 0
    @table.each do |item|
      combo = item.merge(@params)

      parse = TargetHttpProxy.new(combo.merge({fake: true}))

      item_identifiers = {}
      params.each do |param|
        item_identifiers[param.to_sym] = combo[param.to_sym]
      end

      cleaned_item = {}
      item.each do |k, v|
        cleaned_item[attrs[k]] = parse.method(attrs[k]).call if attrs.key?(k)
      end

      item_result = {item_identifiers: item_identifiers, item: cleaned_item, i: i}
      my_result.push(item_result)

      File.open("file_#{i}.rb", 'w') do |file|
        file.write(ERB.new(File.read('test.erb')).result_with_hash(item_result))
      end
      i += 1
    end
  end

  def identifiers
    params = ["project", "name"]

    my_result = []
    i = 0
    @table.each do |item|
      combo = item.merge(@params)

      parse = ComputeTargetHttpProxy.new(combo.merge({fake: true}))

      item_identifiers = {}
      params.each do |param|
        item_identifiers[param.to_sym] = combo[param.to_sym]
      end
      my_result.push(item_identifiers)
    end
    my_result
  end

  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/global/targetHttpProxies'
  end
end
