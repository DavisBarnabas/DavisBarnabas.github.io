---
title: "What is Ansible ?"
date: "2023-11-19 02:08:43"
categories: ansible_basics
image: "/assets/ansible/ansible_chap1.png"
tags: ansible, devops, automation
permalink: "/:categories/:title.html"
---
Chapter - 1, Post 1 

Basically its an **Automation Engine** which runs Ansible Playbooks, we can also call it as **Desired-State engine**.
## How can it be used ?

- Configuration management,
- Workflow automation,
- Network automation,
- Provisioning,
- Continuous Delivery.

## Advantages

- It's follows Agentless architecture,
- The playbooks which we write are human readable,
- It has cross platform support (*Linux,Windows,Network devices - Physical,Cloud,Virtual and containers*),
- Can be used along with Version Control System.

## How it works ?

Typically, Ansible connects to the hosts that it manages via OpenSSH/WinRM and pushes small programs called ***Ansible Modules***. These programs are used to put the system in the desired state and any modules that are pushed will be **removed** after it completes it's intended task.

Each Module does one **Specific thing** only.
### Play

A **Play** performs a series of tasks on the managed hosts, in the order specified by the play.

Default behaviour of Ansible when a task fails is to abort the rest of the playbook for the host which had failure.
### Playbook

A file which contains one or more ***Plays***. To be more specific it orchestrates the execution of the Modules.

- ***How and in which order*** the modules in a task are to be executed.
- ***At what time and where*** the modules are to be executed.

An example playbook,

```yaml
---
- name: Play1
  hosts: server_groupname
  gather_facts: false

  tasks:

    - name: Fetch uptime
      ansible.builtin.shell: uptime
      register: up_out

    - name: Display uptime
      debug:
        msg: "{{ up_out['stdout'] }}"

...
```
