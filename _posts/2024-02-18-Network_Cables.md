---
title: "Network Cables"
date: "2024-02-18 15:01:35"
categories: networking
image: "/assets/network/network_cable.jpg"
tags:
  - devops
  - networking
permalink: "/:categories/:title.html"
---
We have different types of cable to do various stuff few notable cables in the industry are Unshielded Twisted Pair cables (UTP), Shielded Twisted Pair cables (STP), Fiber Optic cables.

We also got **Straight Through cables** & **Cross-over cables** which falls under STP/UTP.

Lets see the use case of above two types of cables,

See what type of cable we need to use when we try to connect b/w below devices,

| **Device A** | **Device B** | **Cable used ?** |
| :--: | :--: | :--: |
| **Router** | **Switch** | **Straight Through cable** |
| **PC** | **Switch** | **Straight Through cable** |
| **Router** | **Router** | **Cross-over cable** |
| **PC** | **PC** | **Cross-over cable** |
| **Switch** | **Switch** | **Cross-over cable** |

> **Note:**
> *Speed* is measured in *Bits.
> *Storage space* is measure in *Bytes*.


A cable has 8 pins and the way the pins are connected between the two ends differentiates the *Straight through* & *Cross-over* cables.
### Straight Through Cable:

Assume Start end to be connected with a **Router** or **PC** and the End pin is connected to a **Switch**. Switches always receive data using Pins 1,2 and send data with Pins 3,6.

| **Start Pin num** | **Start Pin Use** | **End Pin num** | **End Pin Use** |
| :--: | :--: | :--: | :--: |
| **1** | **TX - Transmit** | **1** | **RX - Recieve** |
| **2** | **TX** | **2** | **RX** |
| **3** | **RX** | **3** | **TX** |
| **4** | **Bi-directional** | **4** | **Bi-directional** |
| **5** | **Bi-directional** | **5** | **Bi-directional** |
| **6** | **RX** | **6** | **TX** |
| **7** | **Bi-directional** | **7** | **Bi-directional** |
| **8** | **Bi-directional** | **8** | **Bi-directional** |

### Cross-Over Cable:

Assume Start end to be connected with a **Router** or **PC** and the End pin is connected to a **Router** or **PC**.

| **Start Pin num** | **Start Pin Use** | **End Pin num** | **End Pin Use** |
| :--: | :--: | :--: | :--: |
| **1** | **TX - Transmit** | **3** | **RX - Recieve** |
| **2** | **TX** | **6** | **RX** |
| **3** | **RX** | **1** | **TX** |
| **4** | **Bi-directional** | **4** | **Bi-directional** |
| **5** | **Bi-directional** | **5** | **Bi-directional** |
| **6** | **RX** | **3** | **TX** |
| **7** | **Bi-directional** | **7** | **Bi-directional** |
| **8** | **Bi-directional** | **8** | **Bi-directional** |

### Auto MDI-x

All above concepts apply to old switches and router. With all new equipments we have a feature call ***Auto MDI-x*** which takes care where the data is transmitted from and where its received at the pin end and we can use any types of cables to connect the devices. 

| **Speed** | **Protocol** | **Naming convention** | **Length** |
| :--: | :--: | :--: | :--: |
| **10 Mpbs** | **802.3i** | **10BASE-T** | **100 M** |
| **100 Mpbs** | **802.3u** | **100BASE-T** | **100 M** |
| **1 Gbps** | **802.3ab** | **1GBASE-T** | **100 M** |
| **10 Gbps** | **802.3an** | **10GBASE-T** | **100 M** |
### Fiber Optic Cables:

So, with this we got two types,

- Single-mode,
- Multi-mode.

These cables uses ***SFP*** modules.
##### Single Mode:

- It has a wide core diameter through which the light can pass,
- Usually this type of cables are longer,
- Expensive.
##### Multi Mode:

- Less expensive than Single-mode,
- Less in length than Single-mode cables but longer than UTP/STP.

| Speed | Protocol | Naming Convention | Mode | Length |
| :--: | :--: | :--: | :--: | :--: |
| 1 Gbps | 802.3z | 1GBASE-LX | Singe/Multimode | MM - 550M, SM - 5Km |
| 10 Gbps | 802.3ae | 10GBASE-SR | Multi-mode | 400 M |
| 10 Gbps | 802.3ae | 10GBASE-LR | Single-mode | 10 Km |
| 10 Gbps | 802.3ae | 10GBASE-ER | Single-mode | 30 Km |
