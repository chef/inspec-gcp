---
title: About the google_vertex_ai_metadata_stores_artifacts resource
platform: gcp
---

## Syntax
A `google_vertex_ai_metadata_stores_artifacts` is used to test a Google MetadataStoresArtifact resource

## Examples
```
    describe google_vertex_ai_metadata_stores_artifacts(parent: "projects/#{gcp_project_id}/locations/#{metadata_stores_artifact['region']}/metadataStores/#{metadata_stores_artifact['metadataStore']}", region: ' value_region') do
    it { should exist }
  end
```

## Properties
Properties that can be accessed from the `google_vertex_ai_metadata_stores_artifacts` resource:

See [google_vertex_ai_metadata_stores_artifact.md](google_vertex_ai_metadata_stores_artifact.md) for more detailed information
  * `schema_versions`: an array of `google_vertex_ai_metadata_stores_artifact` schema_version
  * `display_names`: an array of `google_vertex_ai_metadata_stores_artifact` display_name
  * `etags`: an array of `google_vertex_ai_metadata_stores_artifact` etag
  * `names`: an array of `google_vertex_ai_metadata_stores_artifact` name
  * `update_times`: an array of `google_vertex_ai_metadata_stores_artifact` update_time
  * `states`: an array of `google_vertex_ai_metadata_stores_artifact` state
  * `metadata`: an array of `google_vertex_ai_metadata_stores_artifact` metadata
  * `uris`: an array of `google_vertex_ai_metadata_stores_artifact` uri
  * `create_times`: an array of `google_vertex_ai_metadata_stores_artifact` create_time
  * `schema_titles`: an array of `google_vertex_ai_metadata_stores_artifact` schema_title
  * `descriptions`: an array of `google_vertex_ai_metadata_stores_artifact` description
  * `labels`: an array of `google_vertex_ai_metadata_stores_artifact` labels

## Filter Criteria
This resource supports all of the above properties as filter criteria, which can be used
with `where` as a block or a method.

## GCP Permissions
