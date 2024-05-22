---
title: About the google_compute_xpn_resources resource
platform: gcp
---

## Syntax
A `google_compute_xpn_resources` is used to test a Google Project resource

## Examples
```
  describe google_compute_xpn_resources(project: 'chef-gcp-inspec') do
    it { should exist }
    its('ids') { should include xpn_resources['id']}
    its('types') { should include xpn_resources['type']}
  end
```

## Properties
Properties that can be accessed from the `google_compute_xpn_resources` resource:

See [google_compute_xpn_resources.md](google_compute_xpn_resources.md) for more detailed information
  * `kind`: Type of resource. Always compute#projectsGetXpnResources for lists of service resources (a.k.a service projects)
  * `resources[]`: Service resources (a.k.a service projects) attached to this project as their shared VPC host.
  * `resources[].type`: The type of the service resource.
  * `resources[].id`: The ID of the service resource. In the case of projects, this field supports project id (e.g., my-project-123) and project number (e.g. 12345678).


## GCP Permissions

Ensure the [Compute Engine API](https://console.cloud.google.com/apis/library/compute.googleapis.com/) is enabled for the current project.
