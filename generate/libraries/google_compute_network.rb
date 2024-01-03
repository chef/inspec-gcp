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
require 'google/compute/property/network_routing_config'

# A provider to manage Compute Engine resources.
class ComputeNetwork < GcpResourceBase
  name 'google_compute_network'
  desc 'Network'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :description
  attr_reader :gateway_ipv4
  attr_reader :id
  attr_reader :name
  attr_reader :subnetworks
  attr_reader :auto_create_subnetworks
  attr_reader :creation_timestamp
  attr_reader :routing_config

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @description = @fetched['description']
    @gateway_ipv4 = @fetched['gatewayIPv4']
    @id = @fetched['id']
    @name = @fetched['name']
    @subnetworks = @fetched['subnetworks']
    @auto_create_subnetworks = @fetched['autoCreateSubnetworks']
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @routing_config = GoogleInSpec::Compute::Property::NetworkRoutingConfig.new(@fetched['routingConfig'], to_s)
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Network #{@params[:name]}"
  end

  def un_parse
    {
      'description' => ->(x, _) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      'gateway_ipv4' => ->(x, _) { x.nil? ? [] : ["its('gateway_ipv4') { should cmp #{x.inspect} }"] },
      'id' => ->(x, _) { x.nil? ? [] : ["its('id') { should cmp #{x.inspect} }"] },
      'name' => ->(x, _) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'subnetworks' => ->(x, _) { x.nil? ? [] : x.map { |single| "its('subnetworks') { should include #{single.inspect} }" } },
      'auto_create_subnetworks' => ->(x, _) { x.nil? ? [] : ["its('auto_create_subnetworks') { should cmp #{x.inspect} }"] },
      'creation_timestamp' => ->(x, _) { x.nil? ? [] : ["its('creation_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      'routing_config' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::NetworkRoutingConfig.un_parse(x, 'routing_config') },
    }
  end

  def dump(path, template_path, test_number, ignored_fields)
    name = 'Network'

    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    template_vars = {
      name:,
      arr:,
      type: 'google_compute_network',
      identifiers: @params,
      number: test_number,
    }
    File.open("#{path}/#{name}_#{test_number}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(template_vars))
    end
  end

  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/global/networks/{{name}}'
  end
end
