# Example configuration file for prometheus-openstack-exporter
# Copyright (C) 2016 Canonical, Ltd.
#

listen_port: 9183
cache_refresh_interval: 30  # In seconds
cache_file: /var/cache/prometheus-openstack-exporter/mycloud
cloud: mycloud
openstack_allocation_ratio_vcpu: 2.5
openstack_allocation_ratio_ram: 1.1
openstack_allocation_ratio_disk: 1.0

# To export hypervisor_schedulable_instances metric set desired instance size
schedulable_instance_size:
    ram_mbs: 4096
    vcpu: 2
    disk_gbs: 20

# There is no way to retrieve them using OpenStack APIs
# For clouds deployed without swift, remove this part
swift_hosts:
    - host1.example.com
    - host2.example.com
