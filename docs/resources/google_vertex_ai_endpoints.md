---
title: About the google_vertex_ai_endpoints resource
platform: gcp
---

## Syntax
A `google_vertex_ai_endpoints` is used to test a Google Endpoint resource

## Examples
```
    describe google_vertex_ai_endpoints(parent: "projects/#{gcp_project_id}/locations/#{endpoint['region']}", region: ' value_region') do
    it { should exist }
  end
```

## Properties
Properties that can be accessed from the `google_vertex_ai_endpoints` resource:

See [google_vertex_ai_endpoint.md](google_vertex_ai_endpoint.md) for more detailed information
  * `encryption_specs`: an array of `google_vertex_ai_endpoint` encryption_spec
  * `enable_private_service_connects`: an array of `google_vertex_ai_endpoint` enable_private_service_connect
  * `update_times`: an array of `google_vertex_ai_endpoint` update_time
  * `model_deployment_monitoring_jobs`: an array of `google_vertex_ai_endpoint` model_deployment_monitoring_job
  * `descriptions`: an array of `google_vertex_ai_endpoint` description
  * `deployed_models`: an array of `google_vertex_ai_endpoint` deployed_models
  * `networks`: an array of `google_vertex_ai_endpoint` network
  * `traffic_splits`: an array of `google_vertex_ai_endpoint` traffic_split
  * `labels`: an array of `google_vertex_ai_endpoint` labels
  * `display_names`: an array of `google_vertex_ai_endpoint` display_name
  * `predict_request_response_logging_configs`: an array of `google_vertex_ai_endpoint` predict_request_response_logging_config
  * `etags`: an array of `google_vertex_ai_endpoint` etag
  * `create_times`: an array of `google_vertex_ai_endpoint` create_time
  * `names`: an array of `google_vertex_ai_endpoint` name

## Filter Criteria
This resource supports all of the above properties as filter criteria, which can be used
with `where` as a block or a method.

## GCP Permissions
