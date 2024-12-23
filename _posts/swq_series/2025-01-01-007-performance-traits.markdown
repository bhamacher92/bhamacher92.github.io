---

layout: post  
read_time: true  
show_date: true  
title:  Performance Efficiency Traits  
date:   2024-01-01 08:32:20 0000  
description: ISO/IEC 25010 Performance Efficiency Traits 
img: posts/common/QUALITY_PERFORMANCE.png   
tags: [Software Quality Series]  
author: Bastian Hamacher  
github:  bhamacher92  
mathjax: yes  

---

*This article is part of the Software Quality series. If you haven’t read the introductory article, you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines performance efficiency, one of the nine software quality traits, as 
the degree to which a product performs its functions within specified time and throughput parameters and is efficient in the use of resources (such as CPU, memory, storage, network devices, energy, materials...) under specified conditions.
It further breaks down performance efficiency into three sub-traits: 


### Time Behaviour  
The degree to which the response time and throughput rates of a product or system, when performing its functions, meet requirements.  

Time behaviour is crucial in systems where users expect immediate feedback or where timing is critical. For example, in trading applications, even milliseconds can determine whether a transaction results in profit or loss. Poor time behaviour can significantly impact the usability and competitiveness of such systems.  

### Resource Utilization  
The degree to which the amounts and types of resources used by a product or system, when performing its functions, meet requirements.  

Although end-users may not always consciously notice resource utilization (e.g., CPU or memory usage), it becomes evident in performance-critical applications such as gaming or large-scale data processing.  

An iconic example is the phrase "But can it run Crysis?"—a nod to the resource-heavy game that became a benchmark for gaming hardware in its time. While the game was successful, it also highlighted the importance of ensuring software runs efficiently on consumer-grade systems.  

### Capacity  
The degree to which the maximum limits of a product or system parameter meet requirements.  

A straightforward example of capacity is the maximum number of concurrent users a server can handle. This metric is especially relevant for online services, e-commerce platforms, and cloud applications, where systems must be designed to handle peak loads without degrading performance. Failure to meet capacity requirements can lead to outages, poor user experiences, and revenue loss.  

## How to Improve Performance Efficiency  
Performance efficiency hinges on the technology stack, algorithms, and scalability. Where to invest time and money largely depends on the application's nature:  

1. **Web Applications**  
   For web apps, investing in hardware (e.g., servers) often makes more sense than over-optimizing code, as hardware costs can be lower than the time and resources required for extreme code optimization. Scalability—both vertical and horizontal—is critical for web applications, given their typically dynamic and distributed nature.  

2. **Desktop Applications**  
   Desktop applications are limited to the resources of the user's machine, making scalability less relevant. However, implementing multithreading solutions like [thread pools](https://en.wikipedia.org/wiki/Thread_pool) or leveraging GPU processing can significantly improve performance.  

3. **Embedded Systems**  
   Embedded systems usually have very tight resource constraints, necessitating highly efficient code, often written in languages like C or even Assembly. This is particularly important when devices are manufactured in high volumes, as optimized software can reduce hardware costs. In these systems, trade-offs may be made against usability to save on resources.  

### Scalability in Web Applications  
Public cloud technologies highlight the power of scalability for improving performance efficiency. Scalability can be classified into two categories:  

1. **Vertical Scalability**  
   Adding better or additional hardware to an existing system, such as increasing RAM, upgrading the CPU, or expanding storage.  

2. **Horizontal Scalability**  
   Adding more nodes to handle the same workload without altering the system itself. This approach is preferred due to its flexibility and resilience, as it avoids downtime and allows existing resources to scale efficiently. However, it introduces complexities, such as requiring [stateless services](https://en.wikipedia.org/wiki/Service_statelessness_principle) and addressing challenges in scaling databases. Techniques like [database sharding](https://aws.amazon.com/what-is/database-sharding/?nc1=h_ls) are often employed to distribute the database load across multiple nodes.  

## Conclusion  
Performance efficiency is a cornerstone of software quality, impacting user satisfaction, operational costs, and system longevity. Improving this attribute involves carefully balancing technology, architecture, and resource management tailored to the application's context.  

For web applications, scalability—whether vertical or horizontal—plays a significant role in meeting performance demands. Desktop applications require optimization of resource use within the constraints of individual machines, while embedded systems demand precise efficiency due to their limited hardware.  

Ultimately, achieving performance efficiency is about understanding the specific needs of the application and its users, enabling systems to perform reliably and effectively under expected and peak conditions.

**[<- Pervious article in this series]({% post_url swq_series/2025-01-01-006-reliability-traits %})**      **[Next article in this series->]({% post_url swq_series/2025-01-01-008-interaction-capability-traits %})** 