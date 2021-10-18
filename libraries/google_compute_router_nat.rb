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
require 'google/compute/property/routernat_log_config'
require 'google/compute/property/routernat_subnetwork'

# A provider to manage Compute Engine resources.
class ComputeRouterNat < GcpResourceBase
  name 'google_compute_router_nat'
  desc 'RouterNat'
  supports platform: 'gcp'

  attr_reader :params, :name, :nat_ip_allocate_option, :nat_ips, :drain_nat_ips, :source_subnetwork_ip_ranges_to_nat, :subnetwork, :min_ports_per_vm, :udp_idle_timeout_sec, :icmp_idle_timeout_sec, :tcp_established_idle_timeout_sec, :tcp_transitory_idle_timeout_sec, :log_config, :enable_endpoint_independent_mapping, :router, :region

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    @fetched = unwrap(fetched, params)
    parse unless @fetched.nil?
  end

  def identity
    %w{name}
  end

  def collection_item
    'nats'
  end

  def unwrap(fetched, params)
    fetched[collection_item].find { |result| identity.all? { |id| result[id] == params[id.to_sym] } }
  end

  def parse
    @name = @fetched['name']
    @nat_ip_allocate_option = @fetched['natIpAllocateOption']
    @nat_ips = @fetched['natIps']
    @drain_nat_ips = @fetched['drainNatIps']
    @source_subnetwork_ip_ranges_to_nat = @fetched['sourceSubnetworkIpRangesToNat']
    @subnetwork = GoogleInSpec::Compute::Property::RouterNatSubnetworkArray.parse(@fetched['subnetworks'], to_s)
    @min_ports_per_vm = @fetched['minPortsPerVm']
    @udp_idle_timeout_sec = @fetched['udpIdleTimeoutSec']
    @icmp_idle_timeout_sec = @fetched['icmpIdleTimeoutSec']
    @tcp_established_idle_timeout_sec = @fetched['tcpEstablishedIdleTimeoutSec']
    @tcp_transitory_idle_timeout_sec = @fetched['tcpTransitoryIdleTimeoutSec']
    @log_config = GoogleInSpec::Compute::Property::RouterNatLogConfig.new(@fetched['logConfig'], to_s)
    @enable_endpoint_independent_mapping = @fetched['enableEndpointIndependentMapping']
    @router = @fetched['router']
    @region = @fetched['region']
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "RouterNat #{@params[:router]}"
  end

  private

  def product_url(beta = false)
    if beta
      'https://compute.googleapis.com/compute/beta/'
    else
      'https://compute.googleapis.com/compute/v1/'
    end
  end

  def resource_base_url
    'projects/{{project}}/regions/{{region}}/routers/{{router}}'
  end
end
