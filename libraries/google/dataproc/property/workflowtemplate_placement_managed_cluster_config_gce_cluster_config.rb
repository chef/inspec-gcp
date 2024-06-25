# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    Type: MMv1     ***
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
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config_confidential_instance_config'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config_metadata'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config_node_group_affinity'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config_reservation_affinity'
require 'google/dataproc/property/workflowtemplate_placement_managed_cluster_config_gce_cluster_config_shielded_instance_config'
module GoogleInSpec
  module Dataproc
    module Property
      class WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig
        attr_reader :zone_uri

        attr_reader :network_uri

        attr_reader :subnetwork_uri

        attr_reader :internal_ip_only

        attr_reader :private_ipv6_google_access

        attr_reader :service_account

        attr_reader :service_account_scopes

        attr_reader :tags

        attr_reader :metadata

        attr_reader :reservation_affinity

        attr_reader :node_group_affinity

        attr_reader :shielded_instance_config

        attr_reader :confidential_instance_config

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @zone_uri = args['zoneUri']
          @network_uri = args['networkUri']
          @subnetwork_uri = args['subnetworkUri']
          @internal_ip_only = args['internalIpOnly']
          @private_ipv6_google_access = args['privateIpv6GoogleAccess']
          @service_account = args['serviceAccount']
          @service_account_scopes = args['serviceAccountScopes']
          @tags = args['tags']
          @metadata = GoogleInSpec::Dataproc::Property::WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigMetadata.new(args['metadata'], to_s)
          @reservation_affinity = GoogleInSpec::Dataproc::Property::WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity.new(args['reservationAffinity'], to_s)
          @node_group_affinity = GoogleInSpec::Dataproc::Property::WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity.new(args['nodeGroupAffinity'], to_s)
          @shielded_instance_config = GoogleInSpec::Dataproc::Property::WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig.new(args['shieldedInstanceConfig'], to_s)
          @confidential_instance_config = GoogleInSpec::Dataproc::Property::WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigConfidentialInstanceConfig.new(args['confidentialInstanceConfig'], to_s)
        end

        def to_s
          "#{@parent_identifier} WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig"
        end
      end
    end
  end
end
