---
layout: post
read_time: true
show_date: true
title:  Reliability Traits
date:   2024-01-01 08:32:20 0000
description: ISO/IEC 25010 Reliability Traits 
img: posts/common/QUALITY_RELIABILITY.png 
tags: [Software Quality Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article, you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines reliability as one of the nine key quality attributes for software. It further breaks down reliability into four sub-traits:

### Faultlessness 
The degree to which a system, product, or component performs specified functions without fault under normal operation.

Faultlessness highly correlates with Mean Time Between Failure (MTBF): 


$\text{MTBF} = \frac{\text{Operational Hours}}{\text{Failures}}$


A higher MTBF indicates greater faultlessness by showing that failures are rare during operational use.

### Availability 
The degree to which a system, product, or component is operational and accessible when required for use. 

Many products like [Software as a Service (SaaS)](https://en.wikipedia.org/wiki/Software_as_a_service) solutions guarantee availability in their [Service Level Agreements (SLA)](https://en.wikipedia.org/wiki/Service-level_agreement). This guarantee is often a major differentiator between free and business subscriptions to a service.

Availability is defined as:


$\text{Availability} = \frac{\text{Uptime}}{\text{Uptime} + \text{Downtime}}$


Alternatively, availability can be expressed using MTBF and Mean Time To Repair (MTTR):

$\text{MTTR} = \frac{\text{Total Maintance Time}}{\text{Number of Repairs}}$

$\text{Availability} = \frac{\text{MTBF}}{\text{MTBF} + \text{MTTR}}$


This formula shows how both prolonged operational periods and rapid recovery times contribute to better availability.


### Fault Tolerance 
The degree to which a system, product, or component operates as intended despite the presence of hardware or software faults.

Fault tolerance directly impacts both MTBF and MTTR. Depending on the system's fault tolerance design, downtime may or may not occur. For example:
- A low MTBF is less of a concern if MTTR  is zero, as the system can continue operating without noticeable downtime. 
- However, frequent failures are still undesirable, even if MTTR is minimized.

Modern systems are increasingly designed with zero downtime requirements, necessitating sophisticated fault-tolerance mechanisms. These mechanisms correlate strongly with **Recoverability**.


### Recoverability
The degree to which, in the event of an interruption or failure, a product or system can recover the data directly affected and re-establish the desired state of the system.

Recoverability focuses on reducing MTTR by ensuring that a system can quickly return to normal operation after a fault.

## How to Improve Reliability

Reliability is a function of both MTBF and MTTR. Achieving high reliability involves increasing MTBF (minimizing failures) and reducing MTTR (minimizing downtime). Key strategies include:

1. **Improving Code Quality and Testing** 

   Writing maintainable, well-tested code reduces the risk of bugs and failures. Automated tests, static analysis, and continuous integration pipelines help catch issues early.

2. **Implementing Redundancy**  

   Redundancy improves MTTR by ensuring alternative systems are available to take over when a failure occurs.  
   - Example: Deploying multiple instances of a web application with a load balancer ensures availability even if one instance fails.
   - Challenge: Synchronizing data between redundant systems while maintaining consistency.

3. **Backups**

    Backing up data is a widely used approach to recovering a system when all other methods fail. Typically, backups do not restore the complete current system state but rather a historical state. The advantage of backups is that they are created at defined points in time, allowing for verification to ensure they are uncorrupted and can provide a recoverable state.
    Maintaining multiple backup versions and avoiding overwriting previous backups can further minimize risks, as this ensures flexibility in choosing a reliable restore point. Additionally, backups are not only beneficial for reliability but also play a crucial role in enhancing security by protecting data from loss due to cyberattacks or other incidents.

4. **Graceful Degradation**  

    Graceful degradation refers to designing systems that maintain essential functionality even during partial failures. Instead of collapsing entirely, the system scales back its operations to provide a reduced but usable experience.  
    - **Example:** A video streaming service might lower the video quality during network congestion instead of stopping the stream altogether.

    Graceful degradation shares similarities with recovery blocks, as both aim to preserve critical functionality under adverse conditions. While graceful degradation involves selectively reducing or disabling non-critical parts of a system, recovery blocks focus on providing alternative implementations to ensure continued operation. In this sense, recovery blocks can be seen as a technical mechanism supporting graceful degradation.

5. **Recovery Blocks**  

    Recovery blocks are a fault-tolerance mechanism designed to maintain critical functionality through fallback implementations. These blocks consist of multiple alternative solutions, with the primary one attempted first. If the primary implementation fails, subsequent alternatives are tried to preserve functionality.  

    - **Example:** Exception handling in software, where an exception (an unexpected or undesired outcome) triggers a recovery block in the catch clause. This ensures the system continues operating, albeit in a potentially degraded mode. 

```cpp
try {
    // Normal Execution
    database.getData();
    ...
}
catch(Exception e) {
    // Recovery Block working on historical read only data
    backup.getData();
    ...
}
```
\\
    Beyond exception handling, recovery blocks can also operate at higher levels. For instance, if an application crashes, a watchdog process might detect the failure and launch a simpler, less feature-rich version of the application to maintain service availability.

## Conclusion

The key to reliability lies in ensuring faultlessness, availability, fault tolerance, and recoverability. Together, these attributes provide the foundation for building reliable systems that meet user expectations and business goals. By improving MTBF, minimizing MTTR, and adopting design strategies like redundancy and graceful degradation, software systems can achieve high reliability and maintain operational continuity even under challenging conditions. 

**[<- Pervious article in this series]({% post_url swq_series/2025-01-01-005-functionality-traits %})**      **[Next article in this series->]({% post_url swq_series/2025-01-01-007-performance-traits %})** 