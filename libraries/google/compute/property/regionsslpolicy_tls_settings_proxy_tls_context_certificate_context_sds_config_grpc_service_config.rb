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
require 'google/compute/property/regionsslpolicy_tsptcccscgscc_credentials'
require 'google/compute/property/regionsslpolicy_tsptcccscgscccf_plugin'
require 'google/compute/property/regionsslpolicy_tsptcccscgscc_credentials'
require 'google/compute/property/regionsslpolicy_tsptcccscgsccc_certificates'
module GoogleInSpec
  module Compute
    module Property
      class RegionSslPolicyTlsSettingsProxyTlsContextCertificateContextSdsConfigGrpcServiceConfig
        attr_reader :target_uri

        attr_reader :channel_credentials

        attr_reader :call_credentials

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @target_uri = args['targetUri']
          @channel_credentials = GoogleInSpec::Compute::Property::RegionSslPolicyTlsSettingsProxyTlsContextCertificateContextSdsConfigGrpcServiceConfigChannelCredentials.new(args['channelCredentials'], to_s)
          @call_credentials = GoogleInSpec::Compute::Property::RegionSslPolicyTlsSettingsProxyTlsContextCertificateContextSdsConfigGrpcServiceConfigCallCredentials.new(args['callCredentials'], to_s)
        end

        def to_s
          "#{@parent_identifier} RegionSslPolicyTlsSettingsProxyTlsContextCertificateContextSdsConfigGrpcServiceConfig"
        end
      end
    end
  end
end
