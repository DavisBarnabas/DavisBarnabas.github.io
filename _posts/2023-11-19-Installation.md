---
title: "Installation Guide"
date: "2023-11-19 02:12:51"
categories: [DevOps, Automation]
tags: [Ansible]
permalink: "/:categories/:title.html"
---

> Packages are all related to RHEL

We can get Ansible in different ways,

- From the upstream community,
- As part of RHEL, with limited support,
- With the fully supported RH Ansible Automation Platform product.

## Community Edition

Provides Ansible in two ways,

- RPM package,
- Python pip module.

### RPM Package:

To get Ansible as an RPM package, we need to ensure that we have epel-release installed.

```bash
# yum install epel-release -y
```
We also got to install the dependencies,

```bash
# yum install python3 python3-pip sshpass python3-libselinux python3-dnf -y

> For autocompletion

# pip3 install argcomplete
```

Now we can install the Ansible package,

```bash
# yum install ansible -y
```

> Note: <br>
> ***ansible*** - Package comes with few collections along with it. <br>
> ***ansible-core*** - Package comes with minimal collections with it.

### Pip Installation:

We can also install the Ansible package via pip module,

```bash
# pip3 install ansible
```

