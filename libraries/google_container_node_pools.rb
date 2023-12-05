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
class ContainerNodePools < GcpResourceBase
  name 'google_container_node_pools'
  desc 'NodePool plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:node_pool_names, field: :node_pool_name)
  filter_table_config.add(:configs, field: :config)
  filter_table_config.add(:initial_node_counts, field: :initial_node_count)
  filter_table_config.add(:node_pool_statuses, field: :node_pool_status)
  filter_table_config.add(:status_messages, field: :status_message)
  filter_table_config.add(:versions, field: :version)
  filter_table_config.add(:autoscalings, field: :autoscaling)
  filter_table_config.add(:managements, field: :management)
  filter_table_config.add(:max_pods_constraints, field: :max_pods_constraint)
  filter_table_config.add(:conditions, field: :conditions)
  filter_table_config.add(:pod_ipv4_cidr_sizes, field: :pod_ipv4_cidr_size)
  filter_table_config.add(:clusters, field: :cluster)
  filter_table_config.add(:locations, field: :location)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('nodePools')
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
      'name' => ->(obj) { [:node_pool_name, obj['name']] },
      'config' => ->(obj) { [:config, GoogleInSpec::Container::Property::NodePoolConfig.new(obj['config'], to_s)] },
      'initialNodeCount' => ->(obj) { [:initial_node_count, obj['initialNodeCount']] },
      'status' => ->(obj) { [:node_pool_status, obj['status']] },
      'statusMessage' => ->(obj) { [:status_message, obj['statusMessage']] },
      'version' => ->(obj) { [:version, obj['version']] },
      'autoscaling' => ->(obj) { [:autoscaling, GoogleInSpec::Container::Property::NodePoolAutoscaling.new(obj['autoscaling'], to_s)] },
      'management' => ->(obj) { [:management, GoogleInSpec::Container::Property::NodePoolManagement.new(obj['management'], to_s)] },
      'maxPodsConstraint' => ->(obj) { [:max_pods_constraint, GoogleInSpec::Container::Property::NodePoolMaxPodsConstraint.new(obj['maxPodsConstraint'], to_s)] },
      'conditions' => ->(obj) { [:conditions, GoogleInSpec::Container::Property::NodePoolConditionsArray.parse(obj['conditions'], to_s)] },
      'podIpv4CidrSize' => ->(obj) { [:pod_ipv4_cidr_size, obj['podIpv4CidrSize']] },
      'cluster' => ->(obj) { [:cluster, obj['cluster']] },
      'location' => ->(obj) { [:location, obj['location']] },
    }
  end

  private

  def product_url(beta = false)
    if beta
      'https://container.googleapis.com/v1beta1/'
    else
      'https://container.googleapis.com/v1/'
    end
  end

  def resource_base_url
    'projects/{{project}}/locations/{{location}}/clusters/{{cluster_name}}/nodePools'
  end
end
