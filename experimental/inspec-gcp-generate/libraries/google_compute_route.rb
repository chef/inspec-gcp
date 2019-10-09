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
class ComputeRoute < GcpResourceBase
  name 'google_compute_route'
  desc 'Route'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :dest_range
  attr_reader :description
  attr_reader :name
  attr_reader :network
  attr_reader :priority
  attr_reader :tags
  attr_reader :next_hop_gateway
  attr_reader :next_hop_instance
  attr_reader :next_hop_ip
  attr_reader :next_hop_vpn_tunnel
  attr_reader :next_hop_network

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @dest_range = @fetched['destRange']
    @description = @fetched['description']
    @name = @fetched['name']
    @network = @fetched['network']
    @priority = @fetched['priority']
    @tags = @fetched['tags']
    @next_hop_gateway = @fetched['nextHopGateway']
    @next_hop_instance = @fetched['nextHopInstance']
    @next_hop_ip = @fetched['nextHopIp']
    @next_hop_vpn_tunnel = @fetched['nextHopVpnTunnel']
    @next_hop_network = @fetched['nextHopNetwork']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Route #{@params[:name]}"
  end

  def un_parse
    {
      'dest_range' => ->(x, path) { x.nil? ? [] : ["its('dest_range') { should cmp #{x.inspect} }"] },
      'description' => ->(x, path) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      'name' => ->(x, path) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'network' => ->(x, path) { x.nil? ? [] : ["its('network') { should cmp #{x.inspect} }"] },
      'priority' => ->(x, path) { x.nil? ? [] : ["its('priority') { should cmp #{x.inspect} }"] },
      'tags' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('tags') { should include #{single.inspect} }" } },
      'next_hop_gateway' => ->(x, path) { x.nil? ? [] : ["its('next_hop_gateway') { should cmp #{x.inspect} }"] },
      'next_hop_instance' => ->(x, path) { x.nil? ? [] : ["its('next_hop_instance') { should cmp #{x.inspect} }"] },
      'next_hop_ip' => ->(x, path) { x.nil? ? [] : ["its('next_hop_ip') { should cmp #{x.inspect} }"] },
      'next_hop_vpn_tunnel' => ->(x, path) { x.nil? ? [] : ["its('next_hop_vpn_tunnel') { should cmp #{x.inspect} }"] },
      'next_hop_network' => ->(x, path) { x.nil? ? [] : ["its('next_hop_network') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, i, ignored_fields)

    name = 'Route'


    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    my_map = {
      name: name,
      arr: arr,
      type: 'google_compute_route',
      identifiers: @params,
      number: i
    }
    File.open("#{path}/#{name}_#{i}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(my_map))
    end


  end


  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/global/routes/{{name}}'
  end
end
