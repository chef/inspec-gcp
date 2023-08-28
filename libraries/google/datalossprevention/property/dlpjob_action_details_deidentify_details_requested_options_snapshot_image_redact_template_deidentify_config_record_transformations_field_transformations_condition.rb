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
require 'google/datalossprevention/property/dlpjob_action_details_deidentify_details_requested_options_snapshot_image_redact_template_deidentify_config_record_transformations_field_transformations_condition_expressions'
require 'google/datalossprevention/property/dlpjob_action_details_deidentify_details_requested_options_snapshot_image_redact_template_deidentify_config_record_transformations_field_transformations_condition_expressions_conditions'
require 'google/datalossprevention/property/dlpjob_action_details_deidentify_details_requested_options_snapshot_image_redact_template_deidentify_config_record_transformations_field_transformations_condition_expressions_conditions_conditions'
module GoogleInSpec
  module DataLossPrevention
    module Property
      class DlpJobActionDetailsDeidentifyDetailsRequestedOptionsSnapshotImageRedactTemplateDeidentifyConfigRecordTransformationsFieldTransformationsCondition
        attr_reader :expressions

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @expressions = GoogleInSpec::DataLossPrevention::Property::DlpJobActionDetailsDeidentifyDetailsRequestedOptionsSnapshotImageRedactTemplateDeidentifyConfigRecordTransformationsFieldTransformationsConditionExpressions.new(args['expressions'], to_s)
        end

        def to_s
          "#{@parent_identifier} DlpJobActionDetailsDeidentifyDetailsRequestedOptionsSnapshotImageRedactTemplateDeidentifyConfigRecordTransformationsFieldTransformationsCondition"
        end
      end
    end
  end
end