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
require 'google/dataproc/property/cluster_config'
require 'google/dataproc/property/cluster_config_encryption_config'
require 'google/dataproc/property/cluster_config_gce_cluster_config'
require 'google/dataproc/property/cluster_config_initialization_actions'
require 'google/dataproc/property/cluster_config_master_config'
require 'google/dataproc/property/cluster_config_master_config_disk_config'
require 'google/dataproc/property/cluster_config_master_config_managed_group_config'
require 'google/dataproc/property/cluster_config_secondary_worker_config'
require 'google/dataproc/property/cluster_config_secondary_worker_config_disk_config'
require 'google/dataproc/property/cluster_config_secondary_worker_config_managed_group_config'
require 'google/dataproc/property/cluster_config_security_config'
require 'google/dataproc/property/cluster_config_security_config_kerberos_config'
require 'google/dataproc/property/cluster_config_software_config'
require 'google/dataproc/property/cluster_config_worker_config'
require 'google/dataproc/property/cluster_config_worker_config_disk_config'
require 'google/dataproc/property/cluster_config_worker_config_managed_group_config'

# A provider to manage Dataproc resources.
class DataprocCluster < GcpResourceBase
  name 'google_dataproc_cluster'
  desc 'Cluster'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :cluster_name
  attr_reader :labels
  attr_reader :config
  attr_reader :region
  attr_reader :project_id
  attr_reader :virtual_cluster_config
  attr_reader :status
  attr_reader :status_history
  attr_reader :cluster_uuid
  attr_reader :metrics

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @cluster_name = @fetched['clusterName']
    @labels = @fetched['labels']
    @config = GoogleInSpec::Dataproc::Property::ClusterConfig.new(@fetched['config'], to_s)
    @region = @fetched['region']
    @project_id = @fetched['projectId']
    @virtual_cluster_config = @fetched['virtualClusterConfig']
    @status = @fetched['status']
    @status_history = @fetched['statusHistory']
    @cluster_uuid = @fetched['clusterUuid']
    @metrics = @fetched['metrics']
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Cluster #{@params[:clusterName]}"
  end

  private

  def product_url(beta = false)
    if beta
      'https://dataproc.googleapis.com/v1beta2/'
    else
      'https://dataproc.googleapis.com/v1/'
    end
  end

  def resource_base_url
    'projects/{{project}}/regions/{{region}}/clusters/{{cluster_name}}'
  end
end
