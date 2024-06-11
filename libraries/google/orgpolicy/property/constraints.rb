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
require 'google/orgpolicy/property/google_managed_constraint'
require 'google/orgpolicy/property/list_constraint'
module GoogleInSpec
  module Orgpolicy
    module Property
      class Constraints
        attr_reader :display_name

        attr_reader :google_managed_constraint

        attr_reader :description

        attr_reader :constraint_default

        attr_reader :supports_dry_run

        attr_reader :name

        attr_reader :list_constraint

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @display_name = args['displayName']
          @google_managed_constraint = GoogleInSpec::Orgpolicy::Property::GoogleManagedConstraint.new(args['googleManagedConstraint'], to_s)
          @description = args['description']
          @constraint_default = args['constraintDefault']
          @supports_dry_run = args['supportsDryRun']
          @name = args['name']
          @list_constraint = GoogleInSpec::Orgpolicy::Property::ListConstraint.new(args['listConstraint'], to_s)
        end

        def to_s
          "#{@parent_identifier} Constraints"
        end
      end

      class ConstraintsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return Constraints.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| Constraints.new(v, parent_identifier) }
        end
      end
    end
  end
end
