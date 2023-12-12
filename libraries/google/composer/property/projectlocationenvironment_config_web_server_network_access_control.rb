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
require 'google/composer/property/projectlocationenvironment_config_web_server_network_access_control_allowed_ip_ranges'
module GoogleInSpec
  module Composer
    module Property
      class ProjectLocationEnvironmentConfigWebServerNetworkAccessControl
        attr_reader :allowed_ip_ranges

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @allowed_ip_ranges = GoogleInSpec::Composer::Property::ProjectLocationEnvironmentConfigWebServerNetworkAccessControlAllowedIpRangesArray.parse(args['allowedIpRanges'], to_s)
        end

        def to_s
          "#{@parent_identifier} ProjectLocationEnvironmentConfigWebServerNetworkAccessControl"
        end
      end
    end
  end
end
