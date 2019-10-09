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

# A provider to manage Compute Engine resources.
class ComputeTargetPool < GcpResourceBase
  name 'google_compute_target_pool'
  desc 'TargetPool'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :backup_pool
  attr_reader :creation_timestamp
  attr_reader :description
  attr_reader :failover_ratio
  attr_reader :health_check
  attr_reader :id
  attr_reader :instances
  attr_reader :name
  attr_reader :session_affinity
  attr_reader :region

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @backup_pool = @fetched['backupPool']
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @description = @fetched['description']
    @failover_ratio = @fetched['failoverRatio']
    @health_check = @fetched['healthCheck']
    @id = @fetched['id']
    @instances = @fetched['instances']
    @name = @fetched['name']
    @session_affinity = @fetched['sessionAffinity']
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
    "TargetPool #{@params[:name]}"
  end

  def un_parse
    {
      'backup_pool' => ->(x, path) { x.nil? ? [] : ["its('backup_pool') { should cmp #{x.inspect} }"] },
      'creation_timestamp' => ->(x, path) { x.nil? ? [] : ["its('creation_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      'description' => ->(x, path) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      'failover_ratio' => ->(x, path) { x.nil? ? [] : ["its('failover_ratio') { should cmp #{x.inspect} }"] },
      'health_check' => ->(x, path) { x.nil? ? [] : ["its('health_check') { should cmp #{x.inspect} }"] },
      'id' => ->(x, path) { x.nil? ? [] : ["its('id') { should cmp #{x.inspect} }"] },
      'instances' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('instances') { should include #{single.inspect} }" } },
      'name' => ->(x, path) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'session_affinity' => ->(x, path) { x.nil? ? [] : ["its('session_affinity') { should cmp #{x.inspect} }"] },
      'region' => ->(x, path) { x.nil? ? [] : ["its('region') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, i, ignored_fields)

    name = 'TargetPool'


    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    my_map = {
      name: name,
      arr: arr,
      type: 'google_compute_target_pool',
      identifiers: @params,
      number: i
    }
    File.open("#{path}/#{name}_#{i}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(my_map))
    end


  end


  RSpec::Matchers.alias_matcher :has_target_instance, :be_has_target_instance

  def has_target_instance?(name, zone)
    instances.any? { |instance_self_link| instance_self_link.end_with?("zones/#{zone}/instances/#{name}") }
  end

  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/regions/{{region}}/targetPools/{{name}}'
  end
end
