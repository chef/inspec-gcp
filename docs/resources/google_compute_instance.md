---
title: About the google_compute_instance Resource
platform: gcp
---

# google\_compute\_instance

Use the `google_compute_instance` InSpec audit resource to test properties of a single GCP compute instance.

<br>

## Availability

### Installation

This resource is available in the `inspec-gcp` [resource pack](https://www.inspec.io/docs/reference/glossary/#resource-pack).  To use it, add the following to your `inspec.yml` in your top-level profile:

    depends:
      inspec-gcp:
        git: https://github.com/inspec/inspec-gcp.git

You'll also need to setup your GCP credentials; see the resource pack [README](https://github.com/inspec/inspec-gcp#prerequisites).

### Version

This resource first became available in v0.3.0 of the inspec-gcp resource pack.

## Syntax

A `google_compute_instance` resource block declares the tests for a single GCP instance by project, zone and name.

    describe google_compute_instance(project: 'chef-inspec-gcp',  zone: 'us-east1-b', name: 'inspec-test-vm') do
      it { should exist }
      its('name') { should eq 'inspec-test-vm' }
      its('zone') { should match 'us-east1-b' }
    end

<br>

## Examples

The following examples show how to use this InSpec audit resource.

### Test that a GCP compute instance does not exist

    describe google_compute_instance(project: 'chef-inspec-gcp',  zone: 'us-east1-b', name: 'inspec-test-vm-not-there') do
      it { should_not exist }
    end

### Test that a GCP compute instance is in the expected state ([explore possible states here](https://cloud.google.com/compute/docs/instances/checking-instance-status))

    describe google_compute_instance(project: 'chef-inspec-gcp',  zone: 'us-east1-b', name: 'inspec-test-vm') do
      its('status') { should eq 'RUNNING' }
    end

### Test that a GCP compute instance is the expected size

    describe google_compute_instance(project: 'chef-inspec-gcp',  zone: 'us-east1-b', name: 'inspec-test-vm') do
      its('machine_type') { should match "f1-micro" }
    end

### Test that a GCP compute instance has the expected CPU platform

    describe google_compute_instance(project: 'chef-inspec-gcp',  zone: 'us-east1-b', name: 'inspec-test-vm') do
      its('cpu_platform') { should match "Intel" }
    end

### Test that a GCP compute instance has the expected number of attached disks

    describe google_compute_instance(project: 'chef-inspec-gcp',  zone: 'us-east1-b', name: 'inspec-test-vm') do
      its('disk_count'){should eq 2}
    end

### Test that a GCP compute instance has the expected number of attached network interfaces

    describe google_compute_instance(project: 'chef-inspec-gcp',  zone: 'us-east1-b', name: 'inspec-test-vm') do
      its('network_interfaces_count'){should eq 1}
    end

### Test that a GCP compute instance has the expected number of tags

    describe google_compute_instance(project: 'chef-inspec-gcp',  zone: 'us-east1-b', name: 'inspec-test-vm') do
      its('tag_count'){should eq 1}
    end

### Test that a GCP compute instance has a single public IP address

    describe google_compute_instance(project: 'chef-inspec-gcp',  zone: 'us-east1-b', name: 'inspec-test-vm') do
      its('first_network_interface_nat_ip_exists'){ should be true }
      its('first_network_interface_name'){ should eq "external-nat" }
      its('first_network_interface_type'){ should eq "one_to_one_nat" }
    end

### Test that a particular compute instance label key is present

    describe google_compute_instance(project: 'chef-inspec-gcp',  zone: 'us-east1-b', name: 'inspec-test-vm') do
      its('labels_keys') { should include 'my_favourite_label' }
    end

<br>

## Properties

*  `cpu_platform`, `creation_timestamp`, `deletion_protection`, `disks`, `id`, `kind`, `label_fingerprint`, `machine_type`, `metadata`, `name`, `network_interfaces`, `scheduling`, `start_restricted`, `status`, `tags`, `zone`, `labels_keys`, `labels_values`

<br>


## GCP Permissions

Ensure the [Compute Engine API](https://console.cloud.google.com/apis/library/compute.googleapis.com/) is enabled for the project where the resource is located.