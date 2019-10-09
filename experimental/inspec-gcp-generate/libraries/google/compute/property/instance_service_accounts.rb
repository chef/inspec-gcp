# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
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
      class InstanceServiceAccounts
        attr_reader :args

        attr_reader :email

        attr_reader :scopes

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @email = args['email']
          @scopes = args['scopes']
        end

        def to_s
          "#{@parent_identifier} InstanceServiceAccounts"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'email' => ->(x, path) { x.nil? ? [] : ["its('#{path}.email') { should cmp #{x.inspect} }"] },
            'scopes' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.scopes') { should include #{single.inspect} }" } },
          }
          way_to_parse.map do |k, v|
            v.call(item.method(k).call, path)
          end
        end

        def to_json
          @args.to_json
        end

        def self.from_json string
          data = JSON.load string
          self.new data
        end

        # other is a string representation of this object
        def ==(other)
          return @args == JSON.load(other)
        end
      end

      class InstanceServiceAccountsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return InstanceServiceAccounts.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| InstanceServiceAccounts.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| InstanceServiceAccounts.un_parse(v, path) }
        end
      end
    end
  end
end
