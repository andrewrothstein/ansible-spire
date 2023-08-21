andrewrothstein.spire
=========
![Build Status](https://github.com/andrewrothstein/ansible-spire/actions/workflows/build.yml/badge.svg)

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
