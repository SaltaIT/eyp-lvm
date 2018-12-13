# lvm

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What lvm affects](#what-lvm-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with lvm](#beginning-with-lvm)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
    * [TODO](#todo)
    * [Contributing](#contributing)

## Overview

lvm userland tools installation

## Module Description

This module just installs the userland tools for LVM

## Setup

### What lvm affects

* LVM package management

### Setup Requirements

This module requires pluginsync enabled

### Beginning with lvm

```
class { 'lvm': }
```

## Usage

Just include the class when needed

## Reference

n/a

## Limitations

Tested on Ubuntu 14.04/16.04/18.04 and CentOS 6/7

## Development

We are pushing to have acceptance testing in place, so any new feature should
have some test to check both presence and absence of any feature

### TODO

* LVM config (/etc/lvm/lvm.conf) management

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
