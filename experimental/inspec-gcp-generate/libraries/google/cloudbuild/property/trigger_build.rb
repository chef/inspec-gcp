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
require 'google/cloudbuild/property/trigger_build_steps'
module GoogleInSpec
  module CloudBuild
    module Property
      class TriggerBuild
        attr_reader :args

        attr_reader :tags

        attr_reader :images

        attr_reader :steps

        def initialize(args = nil, parent_identifier = nil)
          @args = args
          return if args.nil?
          @parent_identifier = parent_identifier
          @tags = args['tags']
          @images = args['images']
          @steps = GoogleInSpec::CloudBuild::Property::TriggerBuildStepsArray.parse(args['steps'], to_s)
        end

        def to_s
          "#{@parent_identifier} TriggerBuild"
        end

        def self.un_parse(item, path)
          return if item.nil?
          way_to_parse = {
            'tags' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.tags') { should include #{single.inspect} }" } },
            'images' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.images') { should include #{single.inspect} }" } },
            'steps' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.steps') { should include '#{single.to_json}' }" } },
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
    end
  end
end
