---
layout: post
read_time: true
show_date: true
title:  Flexibility Traits
date:   2024-01-01 08:32:20 0000
description: ISO/IEC 25010 Flexibility Traits
img: posts/common/QUALITY_PORTABILITY.png 
tags: [Software Quality Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article, you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines compatibility as one of the nine key quality attributes for software, breaking it down into four sub-traits:

### Adaptability
Degree to which a product or system can effectively and efficiently be adapted for or transferred to different hardware, software, or other operational or usage environments.

A good example of adaptability is the ability of an application to run on one or multiple operating systems.

### Scalability
Degree to which a product can handle growing or shrinking workloads or adapt its capacity to handle variability.

### Installability
Degree of effectiveness and efficiency with which a product or system can be successfully installed and/or uninstalled in a specified environment.

In one of my recent projects, I was involved in creating a fairly complex desktop application. Over time, we added more and more features. Some of them depended on third-party libraries provided by Microsoft. Since the product was not released yet, we delivered the application as a portable application in a zip file. Product owners would download the zip file and start the application on their machines for explorative testing. However, from time to time, this would fail because they were missing libraries, which were only available in our development environment. This is a very good example of poor installability.

### Replaceability
Degree to which a product can replace another specified software product for the same purpose in the same environment.


## How to Improve Flexibility

There are many solutions to improve flexibility today. One of the most popular approaches is to combine container technology like Docker with Kubernetes, a tool for automating deployment and scaling. Using this combination brings major improvements in scalability, installability, and replaceability, but it also adds to the system's complexity. 

A modern alternative to this approach is the use of public cloud services, which can significantly simplify deployment and scaling. However, adaptability is a more challenging problem that cannot be solved as straightforwardly. The available solutions, as always, depend heavily on the specific application.


### Handling Multiple CPU Architectures

When writing native applications, they typically work only with a specific OS (e.g., Windows, Linux, macOS) and CPU architecture (e.g., x86 or ARM). With the development of Apple’s M1 series of processors, ARM suddenly became a significant player in the consumer space. This made tools like [Rosetta](https://en.wikipedia.org/wiki/Rosetta_(software)), a dynamic binary translator, crucial again. Microsoft provides its own solution for the same problem called [Prism](https://learn.microsoft.com/en-us/windows/arm/apps-on-arm-x86-emulation). On Linux, **QEMU** can serve as a similar solution. 

However, while Rosetta translates binaries once to make them compatible, Prism and QEMU emulate the architecture dynamically. In my experience, the quality of these solutions is quite good but not always stable. For new software, I would most likely avoid relying solely on these approaches.


### Handling Multiple Operating Systems

Today, [Docker](https://www.docker.com) is available on all operating systems, but it runs natively only on Linux. Windows and macOS require a virtual machine to use Docker, which can be a reasonable approach depending on the application. However, for consumer desktop software or high-performance computing, this is often unacceptable.

Linux has offered [Wine](https://wiki.ubuntuusers.de/Wine/) as a solution to run Windows applications for some time now. In my experience, Wine is unstable and not very user-friendly. However, Valve, building on Wine, developed [Proton](https://en.wikipedia.org/wiki/Proton_(software)) for its Steam Deck. As an integrated solution, Proton is stable and performs well, making it a viable option for gaming and related use cases.

For both problems—CPU architecture and OS compatibility—it can often be simpler to provide multiple binaries for the different architectures or use a platform-independent language like Java, if feasible and relevant to the application.


### Conclusion

Compatibility in software development, as defined by ISO/IEC 25010, is a multifaceted challenge that spans adaptability, scalability, installability, and replaceability. While technologies like Docker, Kubernetes, Rosetta, Prism, and QEMU have advanced flexibility significantly, they often introduce additional complexity or performance trade-offs. 

For developers, the choice of tools and approaches depends on the specific requirements of the project. In scenarios requiring high performance or end-user simplicity, solutions like native binaries or platform-independent programming languages might be more suitable. Conversely, for enterprise applications or backend services, leveraging containers and cloud technologies can bring scalability and operational benefits.

Ultimately, achieving optimal compatibility demands a balance between innovation and practicality, with a clear understanding of the trade-offs involved. As the tech landscape evolves, staying informed about emerging tools and techniques will remain crucial for delivering adaptable and reliable software solutions.

**[<- Pervious article in this series]({% post_url swq_series/2025-01-01-003-compatibility-traits %})**      **[Next article in this series->]({% post_url swq_series/2025-01-01-005-functionality-traits %})** 