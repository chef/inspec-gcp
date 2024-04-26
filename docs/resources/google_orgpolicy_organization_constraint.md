---
title: About the google_orgpolicy_organization_constraint resource
platform: gcp
---

## Syntax
A `google_orgpolicy_organization_constraint` is used to test a Google OrganizationConstraint resource

## Examples
```
describe google_orgpolicy_organization_constraint() do
	it { should exist }

end

describe google_orgpolicy_organization_constraint() do
	it { should_not exist }
end
```

## Properties
Properties that can be accessed from the `google_orgpolicy_organization_constraint` resource:


  * `next_page_token`: Page token used to retrieve the next page. This is currently not used.

  * `constraints`: The collection of constraints that are available on the targeted resource.

    * `display_name`: The human readable name. Mutable.

    * `google_managed_constraint`: A Google managed constraint. This represents a subset of fields missing from Constraint proto that are required to describe CustomConstraint

      * `action_type`: Allow or deny type.
      Possible values:
        * ACTION_TYPE_UNSPECIFIED
        * ALLOW
        * DENY

      * `resource_types`: The resource instance type on which this policy applies. Format will be of the form : `/` Example: * `compute.googleapis.com/Instance`.

      * `condition`: Org policy condition/expression. For example: `resource.instanceName.matches("[production|test]_.*_(\d)+")` or, `resource.management.auto_upgrade == true` The max length of the condition is 1000 characters.

      * `method_types`: All the operations being applied for this constraint.

    * `description`: Detailed description of what this constraint controls as well as how and where it is enforced. Mutable.

    * `constraint_default`: The evaluation behavior of this constraint in the absence of a policy.
    Possible values:
      * CONSTRAINT_DEFAULT_UNSPECIFIED
      * ALLOW
      * DENY

    * `supports_dry_run`: Shows if dry run is supported for this constraint or not.

    * `name`: Immutable. The resource name of the constraint. Must be in one of the following forms: * `projects/{project_number}/constraints/{constraint_name}` * `folders/{folder_id}/constraints/{constraint_name}` * `organizations/{organization_id}/constraints/{constraint_name}` For example, "/projects/123/constraints/compute.disableSerialPortAccess".

    * `list_constraint`: A constraint that allows or disallows a list of string values, which are configured by an Organization Policy administrator with a policy.

      * `supports_under`: Indicates whether subtrees of the Resource Manager resource hierarchy can be used in `Policy.allowed_values` and `Policy.denied_values`. For example, `"under:folders/123"` would match any resource under the 'folders/123' folder.

      * `supports_in`: Indicates whether values grouped into categories can be used in `Policy.allowed_values` and `Policy.denied_values`. For example, `"in:Python"` would match any value in the 'Python' group.


## GCP Permissions

Ensure the [https://orgpolicy.googleapis.com/](https://console.cloud.google.com/apis/library/orgpolicy.googleapis.com/) is enabled for the current project.
