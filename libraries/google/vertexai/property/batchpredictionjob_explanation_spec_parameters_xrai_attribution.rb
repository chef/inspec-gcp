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
require 'google/vertexai/property/batchpredictionjob_explanation_spec_parameters_xrai_attribution_blur_baseline_config'
require 'google/vertexai/property/batchpredictionjob_explanation_spec_parameters_xrai_attribution_smooth_grad_config'
require 'google/vertexai/property/batchpredictionjob_espxasgcfn_sigma'
require 'google/vertexai/property/batchpredictionjob_espxasgcfnsn_sigma'
module GoogleInSpec
  module VertexAI
    module Property
      class BatchPredictionJobExplanationSpecParametersXraiAttribution
        attr_reader :smooth_grad_config

        attr_reader :step_count

        attr_reader :blur_baseline_config

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @smooth_grad_config = GoogleInSpec::VertexAI::Property::BatchPredictionJobExplanationSpecParametersXraiAttributionSmoothGradConfig.new(args['smoothGradConfig'], to_s)
          @step_count = args['stepCount']
          @blur_baseline_config = GoogleInSpec::VertexAI::Property::BatchPredictionJobExplanationSpecParametersXraiAttributionBlurBaselineConfig.new(args['blurBaselineConfig'], to_s)
        end

        def to_s
          "#{@parent_identifier} BatchPredictionJobExplanationSpecParametersXraiAttribution"
        end
      end
    end
  end
end
