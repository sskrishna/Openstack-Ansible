Ansible Kilo Installation on Ubuntu:

- Required Nodes:
    - Ansible server  : 1 node
    - Openstack Nodes : 3 nodessdasdf
    
- Directory structure:
    - group_vars  : Variables needed for the installation
    - inventory   : Host addresses of openstack nodes(ip).
    - playbooks   : Ansible scripts to install openstack global services.
    - roles       : Ansible scripts to install openstack components. Each nested directory is belong to a component in openstack.
    - templates   : Jinja2(.j2 extension) templates to configure the files in nodes according to node type.
    - files       : Files need to be copied to a location in a nodeaasdf
    
 - Openstack individual components installation:
      - Basic environment setup: env_setup.yml
      - Keystone: kilo_keystone.yml
      - Glance: kilo_glance.yml
      
      - Nova:
        - Controller node: kilo_nova.yml
        - Compute node: kilo_nova_compute.yml
      - Neutron:
        - Controller node: kilo_neutron.yml
        - Compute node: kilo_neutron_compute.yml
        - Network node: kilo_neutron_network.yml
      - Cinder: kilo_cinder.yml
      - Horizon: kilo_horizon.yml
         
 - How to run:
      - Configure the openstack node names in "inventory/hosts" file.
      - Run the file "install.sh"
      


