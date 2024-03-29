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
require 'google/compute/property/regionurlmap_path_matchers_default_route_action_weighted_backend_services_header_action'
require 'google/compute/property/regionurlmap_pmdrawbsharht_add'
require 'google/compute/property/regionurlmap_pmdrawbsharht_add'
module GoogleInSpec
  module Compute
    module Property
      class RegionUrlMapPathMatchersDefaultRouteActionWeightedBackendServices
        attr_reader :backend_service

        attr_reader :weight

        attr_reader :header_action

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @backend_service = args['backendService']
          @weight = args['weight']
          @header_action = GoogleInSpec::Compute::Property::RegionUrlMapPathMatchersDefaultRouteActionWeightedBackendServicesHeaderAction.new(args['headerAction'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionUrlMapPathMatchersDefaultRouteActionWeightedBackendServices"
        end
      end

      class RegionUrlMapPathMatchersDefaultRouteActionWeightedBackendServicesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return RegionUrlMapPathMatchersDefaultRouteActionWeightedBackendServices.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| RegionUrlMapPathMatchersDefaultRouteActionWeightedBackendServices.new(v, parent_identifier) }
        end
      end
    end
  end
end