#!/bin/bash

ansible-playbook -i inventory playbooks/env_setup.yml -vvvv

ansible-playbook -i inventory playbooks/kilo_keystone.yml -vvvv

ansible-playbook -i inventory playbooks/kilo_glance.yml -vvvv

ansible-playbook -i inventory playbooks/kilo_nova.yml -vvvv

ansible-playbook -i inventory playbooks/kilo_nova_compute.yml -vvvv

ansible-playbook -i inventory playbooks/kilo_neutron.yml -vvvv

ansible-playbook -i inventory playbooks/kilo_neutron_compute.yml -vvvv

ansible-playbook -i inventory playbooks/kilo_neutron_network.yml -vvvv

ansible-playbook -i inventory playbooks/kilo_horizon.yml -vvvv

