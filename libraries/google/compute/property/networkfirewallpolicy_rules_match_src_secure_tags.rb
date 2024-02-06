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
      class NetworkFirewallPolicyRulesMatchSrcSecureTags
        attr_reader :name

        attr_reader :state

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @name = args['name']
          @state = args['state']
        end

        def to_s
          "#{@parent_identifier} NetworkFirewallPolicyRulesMatchSrcSecureTags"
        end
      end

      class NetworkFirewallPolicyRulesMatchSrcSecureTagsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return NetworkFirewallPolicyRulesMatchSrcSecureTags.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| NetworkFirewallPolicyRulesMatchSrcSecureTags.new(v, parent_identifier) }
        end
      end
    end
  end
end