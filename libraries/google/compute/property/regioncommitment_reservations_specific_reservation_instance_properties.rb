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
require 'google/compute/property/regioncommitment_reservations_specific_reservation_instance_properties_guest_accelerators'
require 'google/compute/property/regioncommitment_reservations_specific_reservation_instance_properties_local_ssds'
module GoogleInSpec
  module Compute
    module Property
      class RegionCommitmentReservationsSpecificReservationInstanceProperties
        attr_reader :machine_type

        attr_reader :guest_accelerators

        attr_reader :min_cpu_platform

        attr_reader :local_ssds

        attr_reader :maintenance_freeze_duration_hours

        attr_reader :location_hint

        attr_reader :maintenance_interval

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @machine_type = args['machineType']
          @guest_accelerators = GoogleInSpec::Compute::Property::RegionCommitmentReservationsSpecificReservationInstancePropertiesGuestAcceleratorsArray.parse(args['guestAccelerators'], to_s)
          @min_cpu_platform = args['minCpuPlatform']
          @local_ssds = GoogleInSpec::Compute::Property::RegionCommitmentReservationsSpecificReservationInstancePropertiesLocalSsdsArray.parse(args['localSsds'], to_s)
          @maintenance_freeze_duration_hours = args['maintenanceFreezeDurationHours']
          @location_hint = args['locationHint']
          @maintenance_interval = args['maintenanceInterval']
        end

        def to_s
          "#{@parent_identifier} RegionCommitmentReservationsSpecificReservationInstanceProperties"
        end
      end
    end
  end
end