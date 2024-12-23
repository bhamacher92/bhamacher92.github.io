---
layout: post
read_time: true
show_date: true
title:  Compatibility Traits
date:   2024-01-01 08:32:20 0000
description: ISO/IEC 25010 Compatibility Traits
img: posts/common/QUALITY_COMPATIBILITY.png 
tags: [Software Quality Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
mermaid: true
---

*This article is part of the Software Quality series. If you haven’t read the introductory article, you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines compatibility, one of the nine software quality traits, as 
the degree to which a product, system or component can exchange information with other products, systems or components, and/or perform its required functions while sharing the same common environment and resources.
It further breaks down compatibility into two sub-traits: 
*Compared to the last article on maintainability, the subcategories of compatibility are less intuitive, so I will explain them in more detail and not strictly adhere to the ISO/IEC 25010 definitions.*

### Co-Existence

Co-existence refers to the ability of a product to perform its required functions efficiently while sharing a common environment and resources with other products, without negatively impacting any other product. 

An example of co-existence is when two applications run on the same system and rely on the same library. If both applications use the same version of the library, everything works as expected. However, if they need different versions of the library, conflicts can arise. 

Another example could involve real-time environments where multiple processes run on the same machine. Each process must meet its time constraints, so adding a new process could potentially disrupt time behavior and cause the system to exceed its limits.

These are simplified examples, but they demonstrate the wide range of challenges involved in ensuring co-existence between software.

### Interoperability

Interoperability is the ability of a system, product, or component to exchange information with other products and mutually use the exchanged information.

This requirement may seem simple, but it can be problematic depending on the context. In my career, much of the software I developed was highly specialized, and interoperability wasn't a major concern. However, reflecting on it, even a small investment in interoperability considerations could have led to more flexible and user-friendly outcomes.

Let's use this simple example to understand interoperability better. Imagine creating a music player with a proprietary file format. The software would be of limited use because without broader support for that format, users wouldn’t be able to play any music files. It's as simple as that.

## How to Improve Compatibility

The requirements for compatibility vary depending on the system, but there are common problems that can be addressed.

### Shared Dependencies

Shared dependencies can be tackled by using dependencies with concrete versions. Unlike in early versions of Windows, it's now easy to use multiple versions of the same library. Modern Windows uses [Assemblies](https://learn.microsoft.com/de-de/dotnet/standard/assembly/) to handle this issue. Linux never had this problem because it uses a simple strategy to support both concrete and canonical versions of dependencies. It provides libraries with major, minor, and patch versions, and symlinks to them as shown below. Each application can decide how precisely the version needs to match.

<div class="mermaid" style="background-color: lightgray;">
graph LR

    libA.so.2 -->|symlink| libA.so.2.1
    libA.so.2.1 -->|symlink| libA.so.2.1.1 
    libA -->|symlink| libA.so.3
    libA.so.3 -->|symlink| libA.so.3.1
    libA.so.3.1 -->|symlink| libA.so.3.1.2
    libA.so.3.1.0

    App1 -->|depends on| libA.so.3.1
    App2 -->|depends on| libA.so.3.1.0
</div>

A more modern and powerful approach is to decouple dependencies entirely using containers. A container is an isolated environment with its own filesystem. Systems like Docker use [chroot](https://linux.die.net/man/1/chroot) to create isolated artificial filesystems and [namespaces](https://man7.org/linux/man-pages/man7/namespaces.7.html) for process isolation. This prevents conflicts by completely separating applications and their files. However, this approach is not suitable for all environments, as it only works natively on Linux systems and can add complexity, particularly for GUI applications.

### Compatible APIs

Providing compatibility with a wide range of external systems can be beneficial, but sometimes it might be unwanted (Vendor lock). A good example of compatibility is [HTTP](https://en.wikipedia.org/wiki/HTTP), a protocol supported by all browsers. Adhering to established standards, such as European norms or widely used protocols like REST, improves interoperability and also promotes code reusability.

## Conclusion

Compatibility encompasses a variety of challenges that depend heavily on the specific application. It’s impossible to provide a general set of problems and solutions. Compatibility can be either desirable or undesirable depending on business goals (though, for customers, it's typically better if a system is as compatible with others as possible). Ultimately, it's important to invest thought into this quality criterion and decide on the necessary measures.

**[<- Pervious article in this series]({% post_url swq_series/2025-01-01-002-maintainability-traits %})**      **[Next article in this series->]({% post_url swq_series/2025-01-01-004-flexibility-traits %})** 