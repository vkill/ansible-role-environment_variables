Ansible Role - environment_variables
=========

[![Build Status](https://travis-ci.org/vkill/ansible-role-environment_variables.svg?branch=master)](https://travis-ci.org/vkill/ansible-role-environment_variables)

Define environment variables on Linux.

ref [https://wiki.archlinux.org/index.php/environment_variables](https://wiki.archlinux.org/index.php/environment_variables)

Requirements
------------

None.

Role Variables
--------------

None.

Dependencies
------------

None.

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
     - role: vkill.environment_variables
```

Local Testing
-------

```bash
$ cp .versions.conf.example .versions.conf

$ cd .

$ gem install bundler

$ bundle install

$ wget -nc -P vagrant_box http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box

$ kitchen test

# for development

$ kitchen converge ubuntu

$ kitchen verify ubuntu

$ kitchen destroy ubuntu

```

License
-------

MIT / BSD

Author Information
------------------

vkill <vkill.net@gmail.com>

&copy; 2016
