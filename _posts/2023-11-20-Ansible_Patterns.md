---
title: "Ansible Patterns"
date: "2023-11-20 00:24:04"
categories: ansible_basics
image: "/assets/ansible/ansible_chap1.png"
tags: ansible, devops, automation
permalink: "/:categories/:title.html"
---
Chapter - 1, Post 3

<br>

Patterns can be really helpful to us when we use Ad-Hoc commands to specifically run our tasks in a *single host or group of hosts* from our inventory file as we define. 

### Common Patterns

| Scope | Pattern | 
|  :---: |  :---:  |
| All Hosts | all (or) * | 
| One Host | host1 |
| Multiple Hosts | host1:host2 (or) host1,host2 | 
| One Group | group1 | 
| Multiple Groups | group1:group2 | 
| Exclude matching Hosts | group1:\\!group2 | 
| Include matching Hosts | group1:\\&group2 | 

<br> 

- Accessing using the position (*index*) of the host in a group,

```shell
# cat inventory.ini
[group1]
host1
host2
host3 

# ansible -i inventory.ini group1\[1] --list 
hosts (1)
    host2
```

- Accessing the hosts using regex,

```shell 
# cat inventory.ini
[group1]
server1
server2.example.com
server3

[group2]
host4.example.com
host2 

# ansible -i inventory.ini "~(host|server).*\.example\.com" --list 
hosts(2)
    server2.example.com
    host4.example.com
```

- Accessing using the --limit option, this will limit the playbook from running only in the hosts fetched using the pattern.

```shell
--limit "host1" 
--limit "group1:\&group2"
--limit "host1,host2"
--limit "group2:\!group1"
```
