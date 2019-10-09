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

# A provider to manage Cloud Memorystore resources.
class RedisInstance < GcpResourceBase
  name 'google_redis_instance'
  desc 'Instance'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :alternative_location_id
  attr_reader :authorized_network
  attr_reader :create_time
  attr_reader :current_location_id
  attr_reader :display_name
  attr_reader :host
  attr_reader :labels
  attr_reader :redis_configs
  attr_reader :location_id
  attr_reader :name
  attr_reader :memory_size_gb
  attr_reader :port
  attr_reader :redis_version
  attr_reader :reserved_ip_range
  attr_reader :tier
  attr_reader :region

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @alternative_location_id = @fetched['alternativeLocationId']
    @authorized_network = @fetched['authorizedNetwork']
    @create_time = parse_time_string(@fetched['createTime'])
    @current_location_id = @fetched['currentLocationId']
    @display_name = @fetched['displayName']
    @host = @fetched['host']
    @labels = @fetched['labels']
    @redis_configs = @fetched['redisConfigs']
    @location_id = @fetched['locationId']
    @name = @fetched['name']
    @memory_size_gb = @fetched['memorySizeGb']
    @port = @fetched['port']
    @redis_version = @fetched['redisVersion']
    @reserved_ip_range = @fetched['reservedIpRange']
    @tier = @fetched['tier']
    @region = @fetched['region']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Instance #{@params[:name]}"
  end

  def un_parse
    {
      'alternative_location_id' => ->(x, path) { x.nil? ? [] : ["its('alternative_location_id') { should cmp #{x.inspect} }"] },
      'authorized_network' => ->(x, path) { x.nil? ? [] : ["its('authorized_network') { should cmp #{x.inspect} }"] },
      'create_time' => ->(x, path) { x.nil? ? [] : ["its('create_time.to_s') { should cmp '#{x.inspect}' }"] },
      'current_location_id' => ->(x, path) { x.nil? ? [] : ["its('current_location_id') { should cmp #{x.inspect} }"] },
      'display_name' => ->(x, path) { x.nil? ? [] : ["its('display_name') { should cmp #{x.inspect} }"] },
      'host' => ->(x, path) { x.nil? ? [] : ["its('host') { should cmp #{x.inspect} }"] },
      'labels' => ->(x, path) { x.nil? ? [] : x.map { |k, v| "its('labels') { should include(#{k.inspect} => #{v.inspect}) }" } },
      'redis_configs' => ->(x, path) { x.nil? ? [] : x.map { |k, v| "its('redis_configs') { should include(#{k.inspect} => #{v.inspect}) }" } },
      'location_id' => ->(x, path) { x.nil? ? [] : ["its('location_id') { should cmp #{x.inspect} }"] },
      'name' => ->(x, path) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'memory_size_gb' => ->(x, path) { x.nil? ? [] : ["its('memory_size_gb') { should cmp #{x.inspect} }"] },
      'port' => ->(x, path) { x.nil? ? [] : ["its('port') { should cmp #{x.inspect} }"] },
      'redis_version' => ->(x, path) { x.nil? ? [] : ["its('redis_version') { should cmp #{x.inspect} }"] },
      'reserved_ip_range' => ->(x, path) { x.nil? ? [] : ["its('reserved_ip_range') { should cmp #{x.inspect} }"] },
      'tier' => ->(x, path) { x.nil? ? [] : ["its('tier') { should cmp #{x.inspect} }"] },
      'region' => ->(x, path) { x.nil? ? [] : ["its('region') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, i, ignored_fields)

    name = 'Instance'


    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    my_map = {
      name: name,
      arr: arr,
      type: 'google_redis_instance',
      identifiers: @params,
      number: i
    }
    File.open("#{path}/#{name}_#{i}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(my_map))
    end


  end


  private

  def product_url
    'https://redis.googleapis.com/v1/'
  end

  def resource_base_url
    'projects/{{project}}/locations/{{region}}/instances/{{name}}'
  end
end
