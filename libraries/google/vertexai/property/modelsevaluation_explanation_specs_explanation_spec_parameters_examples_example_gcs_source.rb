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
require 'google/vertexai/property/modelsevaluation_esespeegsg_source'
module GoogleInSpec
  module VertexAI
    module Property
      class ModelsEvaluationExplanationSpecsExplanationSpecParametersExamplesExampleGcsSource
        attr_reader :gcs_source

        attr_reader :data_format

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @gcs_source = GoogleInSpec::VertexAI::Property::ModelsEvaluationExplanationSpecsExplanationSpecParametersExamplesExampleGcsSourceGcsSource.new(args['gcsSource'], to_s)
          @data_format = args['dataFormat']
        end

        def to_s
          "#{@parent_identifier} ModelsEvaluationExplanationSpecsExplanationSpecParametersExamplesExampleGcsSource"
        end
      end
    end
  end
end
