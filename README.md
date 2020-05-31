andrewrothstein.spire
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-spire.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-spire)

Installs [spire](spiffe.io).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.spire
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
