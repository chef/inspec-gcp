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
class ComputeFirewalls < GcpResourceBase
  name 'google_compute_firewalls'
  desc 'Firewall plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:alloweds, field: :allowed)
  filter_table_config.add(:creation_timestamps, field: :creation_timestamp)
  filter_table_config.add(:denieds, field: :denied)
  filter_table_config.add(:descriptions, field: :description)
  filter_table_config.add(:destination_ranges, field: :destination_ranges)
  filter_table_config.add(:directions, field: :direction)
  filter_table_config.add(:disableds, field: :disabled)
  filter_table_config.add(:ids, field: :id)
  filter_table_config.add(:names, field: :name)
  filter_table_config.add(:networks, field: :network)
  filter_table_config.add(:priorities, field: :priority)
  filter_table_config.add(:source_ranges, field: :source_ranges)
  filter_table_config.add(:source_service_accounts, field: :source_service_accounts)
  filter_table_config.add(:source_tags, field: :source_tags)
  filter_table_config.add(:target_service_accounts, field: :target_service_accounts)
  filter_table_config.add(:target_tags, field: :target_tags)

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
      'allowed' => ->(obj) { return :allowed, GoogleInSpec::Compute::Property::FirewallAllowedArray.parse(obj['allowed'], to_s) },
      'creationTimestamp' => ->(obj) { return :creation_timestamp, parse_time_string(obj['creationTimestamp']) },
      'denied' => ->(obj) { return :denied, GoogleInSpec::Compute::Property::FirewallDeniedArray.parse(obj['denied'], to_s) },
      'description' => ->(obj) { return :description, obj['description'] },
      'destinationRanges' => ->(obj) { return :destination_ranges, obj['destinationRanges'] },
      'direction' => ->(obj) { return :direction, obj['direction'] },
      'disabled' => ->(obj) { return :disabled, obj['disabled'] },
      'id' => ->(obj) { return :id, obj['id'] },
      'name' => ->(obj) { return :name, obj['name'] },
      'network' => ->(obj) { return :network, obj['network'] },
      'priority' => ->(obj) { return :priority, obj['priority'] },
      'sourceRanges' => ->(obj) { return :source_ranges, obj['sourceRanges'] },
      'sourceServiceAccounts' => ->(obj) { return :source_service_accounts, obj['sourceServiceAccounts'] },
      'sourceTags' => ->(obj) { return :source_tags, obj['sourceTags'] },
      'targetServiceAccounts' => ->(obj) { return :target_service_accounts, obj['targetServiceAccounts'] },
      'targetTags' => ->(obj) { return :target_tags, obj['targetTags'] },
    }
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def identifiers
    params = %w{project name}

    result = []
    @table.each do |item|
      combo = item.merge(@params)
      item_identifiers = {}
      params.each do |param|
        item_identifiers[param.to_sym] = combo[param.to_sym]
      end
      result.push(item_identifiers)
    end
    result
  end

  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/global/firewalls'
  end
end
