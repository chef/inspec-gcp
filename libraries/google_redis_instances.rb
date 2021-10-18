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
class RedisInstances < GcpResourceBase
  name 'google_redis_instances'
  desc 'Instance plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:alternative_location_ids, field: :alternative_location_id)
  filter_table_config.add(:auth_enableds, field: :auth_enabled)
  filter_table_config.add(:authorized_networks, field: :authorized_network)
  filter_table_config.add(:connect_modes, field: :connect_mode)
  filter_table_config.add(:create_times, field: :create_time)
  filter_table_config.add(:current_location_ids, field: :current_location_id)
  filter_table_config.add(:display_names, field: :display_name)
  filter_table_config.add(:hosts, field: :host)
  filter_table_config.add(:labels, field: :labels)
  filter_table_config.add(:redis_configs, field: :redis_configs)
  filter_table_config.add(:location_ids, field: :location_id)
  filter_table_config.add(:names, field: :name)
  filter_table_config.add(:memory_size_gbs, field: :memory_size_gb)
  filter_table_config.add(:ports, field: :port)
  filter_table_config.add(:persistence_iam_identities, field: :persistence_iam_identity)
  filter_table_config.add(:redis_versions, field: :redis_version)
  filter_table_config.add(:reserved_ip_ranges, field: :reserved_ip_range)
  filter_table_config.add(:tiers, field: :tier)
  filter_table_config.add(:transit_encryption_modes, field: :transit_encryption_mode)
  filter_table_config.add(:server_ca_certs, field: :server_ca_certs)
  filter_table_config.add(:regions, field: :region)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('instances')
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
      'alternativeLocationId' => ->(obj) { return :alternative_location_id, obj['alternativeLocationId'] },
      'authEnabled' => ->(obj) { return :auth_enabled, obj['authEnabled'] },
      'authorizedNetwork' => ->(obj) { return :authorized_network, obj['authorizedNetwork'] },
      'connectMode' => ->(obj) { return :connect_mode, obj['connectMode'] },
      'createTime' => ->(obj) { return :create_time, parse_time_string(obj['createTime']) },
      'currentLocationId' => ->(obj) { return :current_location_id, obj['currentLocationId'] },
      'displayName' => ->(obj) { return :display_name, obj['displayName'] },
      'host' => ->(obj) { return :host, obj['host'] },
      'labels' => ->(obj) { return :labels, obj['labels'] },
      'redisConfigs' => ->(obj) { return :redis_configs, obj['redisConfigs'] },
      'locationId' => ->(obj) { return :location_id, obj['locationId'] },
      'name' => ->(obj) { return :name, obj['name'] },
      'memorySizeGb' => ->(obj) { return :memory_size_gb, obj['memorySizeGb'] },
      'port' => ->(obj) { return :port, obj['port'] },
      'persistenceIamIdentity' => ->(obj) { return :persistence_iam_identity, obj['persistenceIamIdentity'] },
      'redisVersion' => ->(obj) { return :redis_version, obj['redisVersion'] },
      'reservedIpRange' => ->(obj) { return :reserved_ip_range, obj['reservedIpRange'] },
      'tier' => ->(obj) { return :tier, obj['tier'] },
      'transitEncryptionMode' => ->(obj) { return :transit_encryption_mode, obj['transitEncryptionMode'] },
      'serverCaCerts' => ->(obj) { return :server_ca_certs, GoogleInSpec::Redis::Property::InstanceServerCaCertsArray.parse(obj['serverCaCerts'], to_s) },
      'region' => ->(obj) { return :region, obj['region'] },
    }
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  private

  def product_url(beta = false)
    if beta
      'https://redis.googleapis.com/v1beta1/'
    else
      'https://redis.googleapis.com/v1/'
    end
  end

  def resource_base_url
    'projects/{{project}}/locations/{{region}}/instances'
  end
end
