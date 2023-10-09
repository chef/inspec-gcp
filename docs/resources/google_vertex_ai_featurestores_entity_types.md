---
title: About the google_vertex_ai_featurestores_entity_types resource
platform: gcp
---

## Syntax
A `google_vertex_ai_featurestores_entity_types` is used to test a Google FeaturestoresEntityType resource

## Examples
```
    describe google_vertex_ai_featurestores_entity_types(parent: "projects/#{gcp_project_id}/locations/#{featurestores_entity_type['region']}/featurestores/#{featurestores_entity_type['featurestore']}", region: ' value_region') do
    it { should exist }
  end
```

## Properties
Properties that can be accessed from the `google_vertex_ai_featurestores_entity_types` resource:

See [google_vertex_ai_featurestores_entity_type.md](google_vertex_ai_featurestores_entity_type.md) for more detailed information
  * `labels`: an array of `google_vertex_ai_featurestores_entity_type` labels
  * `descriptions`: an array of `google_vertex_ai_featurestores_entity_type` description
  * `names`: an array of `google_vertex_ai_featurestores_entity_type` name
  * `create_times`: an array of `google_vertex_ai_featurestores_entity_type` create_time
  * `monitoring_configs`: an array of `google_vertex_ai_featurestores_entity_type` monitoring_config
  * `etags`: an array of `google_vertex_ai_featurestores_entity_type` etag
  * `update_times`: an array of `google_vertex_ai_featurestores_entity_type` update_time
  * `offline_storage_ttl_days`: an array of `google_vertex_ai_featurestores_entity_type` offline_storage_ttl_days

## Filter Criteria
This resource supports all of the above properties as filter criteria, which can be used
with `where` as a block or a method.

## GCP Permissions
