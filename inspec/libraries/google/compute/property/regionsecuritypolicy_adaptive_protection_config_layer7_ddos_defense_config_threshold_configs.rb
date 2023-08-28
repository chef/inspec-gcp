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
      class RegionSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigs
        attr_reader :name

        attr_reader :auto_deploy_load_threshold

        attr_reader :auto_deploy_confidence_threshold

        attr_reader :auto_deploy_impacted_baseline_threshold

        attr_reader :auto_deploy_expiration_sec

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @name = args['name']
          @auto_deploy_load_threshold = args['autoDeployLoadThreshold']
          @auto_deploy_confidence_threshold = args['autoDeployConfidenceThreshold']
          @auto_deploy_impacted_baseline_threshold = args['autoDeployImpactedBaselineThreshold']
          @auto_deploy_expiration_sec = args['autoDeployExpirationSec']
        end

        def to_s
          "#{@parent_identifier} RegionSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigs"
        end
      end

      class RegionSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return RegionSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigs.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| RegionSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigs.new(v, parent_identifier) }
        end
      end
    end
  end
end