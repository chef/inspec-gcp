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
require 'google/compute/property/regioncommitment_reservations_aggregate_reservation'
require 'google/compute/property/regioncommitment_reservations_aggregate_reservation_in_use_resources'
require 'google/compute/property/regioncommitment_reservations_aggregate_reservation_reserved_resources'
require 'google/compute/property/regioncommitment_reservations_delete_after_duration'
require 'google/compute/property/regioncommitment_reservations_resource_policies'
require 'google/compute/property/regioncommitment_reservations_resource_status'
require 'google/compute/property/regioncommitment_reservations_resource_status_specific_sku_allocation'
require 'google/compute/property/regioncommitment_reservations_share_settings'
require 'google/compute/property/regioncommitment_reservations_share_settings_folder_map'
require 'google/compute/property/regioncommitment_reservations_share_settings_project_map'
require 'google/compute/property/regioncommitment_reservations_specific_reservation'
require 'google/compute/property/regioncommitment_reservations_specific_reservation_instance_properties'
require 'google/compute/property/regioncommitment_reservations_specific_reservation_instance_properties_guest_accelerators'
require 'google/compute/property/regioncommitment_reservations_specific_reservation_instance_properties_local_ssds'
module GoogleInSpec
  module Compute
    module Property
      class RegionCommitmentReservations
        attr_reader :kind

        attr_reader :id

        attr_reader :creation_timestamp

        attr_reader :self_link

        attr_reader :self_link_with_id

        attr_reader :zone

        attr_reader :description

        attr_reader :name

        attr_reader :specific_reservation

        attr_reader :aggregate_reservation

        attr_reader :commitment

        attr_reader :specific_reservation_required

        attr_reader :status

        attr_reader :share_settings

        attr_reader :satisfies_pzs

        attr_reader :resource_policies

        attr_reader :resource_status

        attr_reader :delete_at_time

        attr_reader :delete_after_duration

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @kind = args['kind']
          @id = args['id']
          @creation_timestamp = args['creationTimestamp']
          @self_link = args['selfLink']
          @self_link_with_id = args['selfLinkWithId']
          @zone = args['zone']
          @description = args['description']
          @name = args['name']
          @specific_reservation = GoogleInSpec::Compute::Property::RegionCommitmentReservationsSpecificReservation.new(args['specificReservation'], to_s)
          @aggregate_reservation = GoogleInSpec::Compute::Property::RegionCommitmentReservationsAggregateReservation.new(args['aggregateReservation'], to_s)
          @commitment = args['commitment']
          @specific_reservation_required = args['specificReservationRequired']
          @status = args['status']
          @share_settings = GoogleInSpec::Compute::Property::RegionCommitmentReservationsShareSettings.new(args['shareSettings'], to_s)
          @satisfies_pzs = args['satisfiesPzs']
          @resource_policies = GoogleInSpec::Compute::Property::RegionCommitmentReservationsResourcePolicies.new(args['resourcePolicies'], to_s)
          @resource_status = GoogleInSpec::Compute::Property::RegionCommitmentReservationsResourceStatus.new(args['resourceStatus'], to_s)
          @delete_at_time = args['deleteAtTime']
          @delete_after_duration = GoogleInSpec::Compute::Property::RegionCommitmentReservationsDeleteAfterDuration.new(args['deleteAfterDuration'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionCommitmentReservations"
        end
      end

      class RegionCommitmentReservationsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return RegionCommitmentReservations.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| RegionCommitmentReservations.new(v, parent_identifier) }
        end
      end
    end
  end
end
