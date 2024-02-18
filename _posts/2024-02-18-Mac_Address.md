---
title: " Mac Address "
date: " 2024-02-18 16:45:13 "
categories: networking
image: "/assets/network/network_cable.jpg"
tags:
  - devops
  - networking
permalink: "/:categories/:title.html"
---
The ***MAC*** (**Media Access Control**) *address* is an Unique Identifier used to Identify each individual devices which are connected to a Network. 

It's a 6 byte Hexadecimal number which is stored in each device by the manufacturer in their NIC card.  eg. 00-04-5A-53-A1-06

The MAC address contains two parts, the first three bytes " **00-04-5A** " will always identifies the manufacturer of the device and the last three bytes is unique identifier provided by the manufacturer.

The MAC address is also referred to as **Physical Address** , **Layer 2 Address** , **Ethernet Address** , **BIA** (*Burn In Address*) or **Hardware Address**.

##### View Mac Address:

```Windows
> ipconfig /all
```

```Linux
> ip link show 
```

```Cisco
> show mac-address-table
```

Also keep in mind the MAC address is displayed in different format by Windows,Mac/Linux & Cisco.

| **OS** | **Format** |
| :--: | :--: |
| **Windows** | **00-04-5A-53-A1-06** |
| **Mac/Linux** | **00:04:5A:53:A1:06** |
| **Cisco** | **0004.5A53.A106** |

**IP address** is used to Locate where a device is located, whereas a **MAC address** specifically tells us who the device is.

### How devices in a network Identifies the MAC address of other devices ?

It's basically done by sending **ARP** (Address Resolution Protocol) broadcast request to all devices within a network.

##### Scenario:

Let's say PC1 wants to send data to PC2 in the same network, even if PC1 has the IP address of PC2 it still needs the MAC address of PC2 to send the data. 

So first PC1 sends broadcast request which computer has the IP ..... to reply back with its MAC address, so once it has the MAC address of PC2 it will first store the MAC address in its cache and then send the data to PC2. 

The **ARP cache** stores the IP and MAC address info so that we dont need to do ARP Broadcast each time. 

Do note, there are two types of ARP cache entry, 

- Dynamic entry, (Automatically added when a device sends broadcast request and got response, its not permanent will be flushed periodically.)
- Static entry (Entry which we add manually)

##### Create Static ARP entry:

```Linux
> arp -s 10.0.0.2 00:1A:54:A4:54:07
```

##### To view ARP cache:

```Linux 
> arp -a 
```

