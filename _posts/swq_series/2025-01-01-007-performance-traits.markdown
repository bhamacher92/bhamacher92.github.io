---
layout: post
read_time: true
show_date: true
title:  Performance Efficiency Traits
date:   2024-01-01 08:32:20 0000
description: Just a test
img: posts/common/QUALITY_PERFORMANCE.png 
tags: [Software Quality Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article, you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines performance efficiency as one of the nine key quality attributes for software. It further breaks performance efficiency into three sub-traits:

### Time Behaviour
Degree to which the response time and throughput rates of a product or system, when performing its functions, meet requirements.

Time behaviour is for example very important when when users are involved directly and waiting for feedback or in applications where transactions need to be fast like in trading applications 
where very small time frames decide if the transaction end up in profit or loss.

### Resource Utilization
Degree to which the amounts and types of resources used by a product or system, when performing its functions, meet requirements.

While end-users might not always consciously consider resource utilization (for instance, they don’t typically think, “Can my CPU handle this?” when using office software like MS Word), it becomes much more noticeable in certain contexts, such as gaming or resource-intensive applications.

An iconic example of this is the phrase "But can it run Crysis?" This refers to the equally named video game, known for pushing the limits of gaming hardware when it was released. The game’s high resource demands became a benchmark for testing the capabilities of gaming PCs. In this case, resource utilization is crucial: even the best game will not succeed if it cannot run efficiently on most users' systems. Just for the record. Crysis was successful.

### Capacity
Degree to which the maximum limits of a product or system parameter meet requirements.

A simple example of capacity is the maximum number of users a server can support simultaneously. If a system is unable to accommodate the required number of users or transactions, it will likely fail to meet user expectations. This is particularly relevant for online services, cloud-based applications, and e-commerce platforms, where the capacity must be scalable to handle peak loads, such as during sales events or product launches.

## How to Improve Performance Efficiency
Performance efficiency depends largely on the used technology, the used algorithms and the scalability. Deciding where to invest most of the money and time depends heavily on the application. For web applications it can make more sense to invest in hardware than to optimize 
the code to be as efficient as possible or sacrifice abstraction, because the cost for hardware is less than for the additional work involved in optimizing the code more. Desktop

Desktop applications are limited the available resources on one machine and scalability is not really an option. Providing multithreading solution like [threadpools](https://en.wikipedia.org/wiki/Thread_pool) can help to scale with the various machines the software is supposed to run on. Properly utilizing the graphics card can be helpful as well.

Embedded are usually very limited in their resources. Investing in highly efficient software is 
especially importent when devices a sold in high qunatities. These systems usually use programming languages like C++, C or if necessary even Assembler to optimize ideally for the 
used hardware. In many cases other quality traits like usability have to compromise in terms of
**User engagement** and **Inclusivity** to be easy on resources. 

Desktop and embedded applications heavily depend on the environment they are running in and irt is hard they go into more detail. For web applications thing look a bit different. Public Cloud technologies show that a lot of performance requirements can be solved with scalability. Scalability is divided into vertical and horizontal scalability.

1. **Vertical Scalability**
Vertical scalability describes to managing additional load by adding more or better hardware to an existing system. This could be more RAM a new CPU or an additional harddrive.

2. **Horizontal Scalability**
Horizontal scalability managing additional load by hosting the same system on an additional node without touching the system. Horizontal scalability is the preferred solution these days.
While it comes with very powerful benefits like no scaling introduced downtime a further use of existing resource and at some point higher performance it also introduces additional complexity.
Usually horizontal scaling requires [stateless services](https://en.wikipedia.org/wiki/Service_statelessness_principle) and scaling databases required by one service is very challenging, though [database sharding](https://aws.amazon.com/what-is/database-sharding/?nc1=h_ls) offers a solution for this.



## Conclusion