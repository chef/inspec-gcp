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
module GoogleInSpec
  module Compute
    module Property
      class NetworkAttachmentConnectionEndpoints
        attr_reader :status

        attr_reader :project_id_or_num

        attr_reader :subnetwork

        attr_reader :ip_address

        attr_reader :ipv6_address

        attr_reader :secondary_ip_cidr_ranges

        attr_reader :subnetwork_cidr_range

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @status = args['status']
          @project_id_or_num = args['projectIdOrNum']
          @subnetwork = args['subnetwork']
          @ip_address = args['ipAddress']
          @ipv6_address = args['ipv6Address']
          @secondary_ip_cidr_ranges = args['secondaryIpCidrRanges']
          @subnetwork_cidr_range = args['subnetworkCidrRange']
        end

        def to_s
          "#{@parent_identifier} NetworkAttachmentConnectionEndpoints"
        end
      end

      class NetworkAttachmentConnectionEndpointsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return NetworkAttachmentConnectionEndpoints.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| NetworkAttachmentConnectionEndpoints.new(v, parent_identifier) }
        end
      end
    end
  end
end
