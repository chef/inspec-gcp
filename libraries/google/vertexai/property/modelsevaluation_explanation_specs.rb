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
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_metadata'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_metadata_inputs'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_metadata_outputs'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_examples'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_examples_example_gcs_source'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_examples_example_gcs_source_gcs_source'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_examples_presets'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_integrated_gradients_attribution'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_integrated_gradients_attribution_blur_baseline_config'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_integrated_gradients_attribution_smooth_grad_config'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_integrated_gradients_attribution_smooth_grad_config_feature_noise_sigma'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_integrated_gradients_attribution_smooth_grad_config_feature_noise_sigma_noise_sigma'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_sampled_shapley_attribution'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_xrai_attribution'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_xrai_attribution_blur_baseline_config'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_xrai_attribution_smooth_grad_config'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_xrai_attribution_smooth_grad_config_feature_noise_sigma'
require 'google/vertexai/property/modelsevaluation_explanation_specs_explanation_spec_parameters_xrai_attribution_smooth_grad_config_feature_noise_sigma_noise_sigma'
module GoogleInSpec
  module VertexAI
    module Property
      class ModelsEvaluationExplanationSpecs
        attr_reader :explanation_spec

        attr_reader :explanation_type

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @explanation_spec = GoogleInSpec::VertexAI::Property::ModelsEvaluationExplanationSpecsExplanationSpec.new(args['explanationSpec'], to_s)
          @explanation_type = args['explanationType']
        end

        def to_s
          "#{@parent_identifier} ModelsEvaluationExplanationSpecs"
        end
      end

      class ModelsEvaluationExplanationSpecsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return ModelsEvaluationExplanationSpecs.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| ModelsEvaluationExplanationSpecs.new(v, parent_identifier) }
        end
      end
    end
  end
end
