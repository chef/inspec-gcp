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
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_examples_example_gcs_source'
require 'google/vertexai/property/modelsevaluation_esespeegsg_source'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_examples_presets'
module GoogleInSpec
  module VertexAI
    module Property
      class ModelsEvaluationExplanationSpecsExplanationSpecParametersExamples
        attr_reader :presets

        attr_reader :neighbor_count

        attr_reader :example_gcs_source

        attr_reader :nearest_neighbor_search_config

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @presets = GoogleInSpec::VertexAI::Property::ModelsEvaluationExplanationSpecsExplanationSpecParametersExamplesPresets.new(args['presets'], to_s)
          @neighbor_count = args['neighborCount']
          @example_gcs_source = GoogleInSpec::VertexAI::Property::ModelsEvaluationExplanationSpecsExplanationSpecParametersExamplesExampleGcsSource.new(args['exampleGcsSource'], to_s)
          @nearest_neighbor_search_config = args['nearestNeighborSearchConfig']
        end

        def to_s
          "#{@parent_identifier} ModelsEvaluationExplanationSpecsExplanationSpecParametersExamples"
        end
      end
    end
  end
end
