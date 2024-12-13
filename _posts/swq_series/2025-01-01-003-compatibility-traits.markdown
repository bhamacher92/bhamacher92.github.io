---
layout: post
read_time: true
show_date: true
title:  Compatibility Traits
date:   2024-01-01 08:32:20 0000
description: Just a test
img: posts/common/QUALITY_COMPATIBILITY.png 
tags: [Software Quality Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
mermaid: true
---

*This article is part of the Software Quality series. If you haven’t read the introductory article, you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

ISO/IEC 25010 defines compatibility as one of the nine key quality attributes for software. It further breaks down compatibility into two sub-traits.\\
Compared to the last article about maintainability, the subcategories here are not as easily understood. Therefore, I will go into more detail and not strictly adhere to the ISO/IEC 25010 definitions.

### Co-Existence

The degree to which a product can perform its required functions efficiently while sharing a common environment and resources with other products, without detrimental impact on any other product.

A good example of co-existence is when two applications run on the same system and depend on the same library. If both systems use the same version of the library, everything works fine. However, if they require different versions, conflicts can occur.

Another example could be a real-time environment where multiple processes run on the same machine. All processes must execute within their assigned time limits. Adding a new process might alter time behavior, potentially causing the system to breach these time constraints.

These examples are oversimplified but aim to illustrate the wide variety of challenges associated with co-existing software.

### Interoperability

The degree to which a system, product, or component can exchange information with other products and mutually use the information that has been exchanged.

This requirement seems straightforward, but why is it a problem? It depends on the context. In my career, much of the software I developed was highly specialized, and interoperability was not a significant issue. However, reflecting on it, even a small investment in interoperability considerations could have resulted in more user-friendly and flexible outcomes.

Let’s explain interoperability with a simple example: music. Imagine creating a music player with a proprietary file format. The software would be of limited utility because, without broader support for this format, users would be unable to play most music files. It’s as simple as that.

## How to Improve Compatibility

The requirements for compatibility vary significantly depending on the specific system. However, there are some common problems that can be easily tackled. 

### Shared Dependencies

Sharing Dependencies as described above can easily be tackled by using dependencies with concrete versions. Unlike in the early versions of windows it is no problem to use multiple version of the same library. Today windows uses [Assemblies](https://learn.microsoft.com/de-de/dotnet/standard/assembly/) to solve this problem. Linux never had this issue since linux uses a very simple strategy to support concrete and canonical versions of one dependency. Linux provides libs with major, minor and path version and symlinks to them as shown below. Each application can decide for itself how precise the version has to match.

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

A more modern and powerful approach is decouple dependencies entirely using containers.
A container is an isolated environment with its own filesystem. Systems like docker use [chroot](https://linux.die.net/man/1/chroot) 
to create an isolated artificial filesystem and [namespaces](https://man7.org/linux/man-pages/man7/namespaces.7.html) to ensure process isolation. Preventing conflicts by separating the applications and files entirely. This approach is not suitable in all environments, as it runs only on linux systems natively and adds a lot of complexity for gui applications. 

### Compatible APIs

Providing compatibility with as many external systems as possible cna be desirable as it can be 
unwanted (Vendor Lock). A good example for compatibility is [HTTP](https://en.wikipedia.org/wiki/HTTP). A protocol that is used in all browsers. Adhering to like european norms or defacto  standards like REST where possible improves interoperability and additionally adds a chance of code reusability. 

## Conclusion

Compatibility covers a variety of challenges which heavily depend on the specific application. 
It is impossible to provide a general set of possible problems and solutions. Compatibility can be desirable or unwanted depending on the business goals (Though we should not lie to ourself. For the customer it's usually better if the system is as compatible as possible). In the end it is important to invest thought into this quality criteria and decide on the required measures.


**[<- Pervious article in this series]({% post_url swq_series/2025-01-01-002-maintainability-traits %})**      **[Next article in this series->]({% post_url swq_series/2025-01-01-004-flexibility-traits %})** 