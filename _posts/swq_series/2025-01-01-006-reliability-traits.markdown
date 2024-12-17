---
layout: post
read_time: true
show_date: true
title:  Reliability a closer look?
date:   2024-01-01 08:32:20 0000
description: Just a test
img: posts/common/QUALITY_RELIABILITY.png 
tags: [Software Quality]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article, you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines functional suitability as one of the nine key quality attributes for software. It further breaks down functional suitability into four sub-traits:

### Faultlessness 
Degree to which a system, product or component performs specified functions without fault under normal operation.

Faultlessness highly correlates with Mean Time Between Failure(MTBF). 
$\text{MTBF} = \frac{\text{Operational Hours}}{\text{Failures}}$

### Availability 
Degree to which a system, product or component is operational and accessible when required for use. 

Many products like [Software as a Service(SaaS)](https://en.wikipedia.org/wiki/Software_as_a_service) solutions guarantee availability in their [Service Level Agreements(SLA)](https://en.wikipedia.org/wiki/Service-level_agreement). This guarantee can be one of the major difference between free and business subscriptions to a service. Availability is defined as follows:

$\text{Availability} = \frac{\text{Uptime}}{\text{Uptime}+\text{Downtime}}$

Availability can also be expressed in MTBF and Mean Time To Repair(MTTR):

​
$\text{Availability} = \frac{\text{MTBF}}{\text{MTBF}+\text{MTTR}}$

### Fault tolerance 
Degree to which a system, product or component operates as intended despite the presence of hardware or software faults.

Fault tolerance has direct impact on MTTR and MTBF. Depending on the faulttolerance can introduce downtime or not. Having a low MTBF is not necessarly a major problem if the MTTR is zero. Though having a lot of failures is not desirable even if MTTR is zero. Today we a lot of Systems are designed with a zero downtime requirement. Requiring suffisticated fault tolerance mechanisms. This approach coorelates highly with Recoverability.

### Recoverability
Degree to which, in the event of an interruption or a failure, a product or system can recover the data directly affected and re-establish the desired state of the system.

## How to Improve Reliability

Reliability highly depends on MTBF and MTTR. To archive high reliability we want to to bring up MTBF and bring MTTR down. The first step to highly reliable software is good code maintainability with focus on testing. But even well written software contains bugs and risk of failure. Introducing concept like redundancy can improve MTTR. A simple example for a web application would be to deploy the same system twice and place a load balancer in front. If one system goes down the secondary system is still available. It's even possible to scale the system using this mechanism and accept performance degradation, if a failure occurs. An approach like this requires a lot of thought regarding data synchronization Between primary and secondary systems and requires [stateless services](https://en.wikipedia.org/wiki/Service_statelessness_principle). An additional helpful concept is graceful degradation. 
This approach tries to keep up healthy functionalities of the system and to shut down faulty areas to keep the system running. This concept is very similar to Recovery Blocks, an approach used to increase System Safety. A Recovery Block provides a minimized functionality that focuses on the most important system functionalities to keep in a safe and available state. 
A often overlooked implementation of recovery blocks is [Exception Handling](https://www.w3schools.com/java/java_try_catch.asp).

## Conclusion