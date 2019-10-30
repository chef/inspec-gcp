---
title: About the google_project_services resource
platform: gcp
---

## Syntax
A `google_project_services` is used to test a Google Service resource

## Examples
```
describe.one do
  google_project_services(project: 'chef-gcp-inspec').names.each do |name|
    describe name do
      it { should match 'maps-android-backend.googleapis.com' }
    end
  end
end
```

## Properties
Properties that can be accessed from the `google_project_services` resource:

See [google_project_service.md](google_project_service.md) for more detailed information
  * `names`: an array of `google_project_service` name
  * `parents`: an array of `google_project_service` parent
  * `states`: an array of `google_project_service` state

## Filter Criteria
This resource supports all of the above properties as filter criteria, which can be used
with `where` as a block or a method.

## GCP Permissions

Ensure the [Service Usage API](https://console.cloud.google.com/apis/library/serviceusage.googleapis.com/) is enabled for the current project.
