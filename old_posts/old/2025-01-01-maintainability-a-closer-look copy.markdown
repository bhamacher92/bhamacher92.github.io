---
layout: post
read_time: true
show_date: true
title:  Improving Software Maintainability?
date:   2024-01-01 08:32:20 0000
description: Just a test
img: posts/common/QUALITY_MAINTAINABILITY.png 
tags: [Software Quality]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article, you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines maintainability as one of the nine key quality attributes for software. It further breaks down maintainability into five subcategories: Modularity, Reusability, Analyzability, Modifiability, and Testability. This article delves into each of these subcategories and offers practical methods to enhance them.

## Modularity

Modularity refers to how a system is structured into discrete, independent components, such that changes to one component have minimal impact on others. To better understand this concept, let’s reflect on the history of monolithic systems. In a monolithic architecture, all components are tightly integrated into a single application. This design can lead to unpredictable failures when changes are made to the codebase, as features are interwoven in complex and sometimes opaque ways. Developers are required to be familiar with the entire codebase, and this tight coupling makes it difficult—if not impossible—to make parallel changes efficiently.

By contrast, breaking the system into smaller, loosely coupled modules significantly reduces complexity and the risk of introducing unforeseen bugs. It also allows teams to work on different parts of the system simultaneously, with minimal communication between teams. One of the most effective modern approaches to achieving modularity is microservices architecture. In an ideal microservices setup, software is decoupled both technically and organizationally. By aligning services with specific domains of expertise, microservices minimize communication overhead and empower small, autonomous teams to develop and deploy features independently, without interference from other teams.

However, microservices may not be suitable for all types of applications—particularly desktop applications. In such cases, a "modulith" can be an effective alternative. A modulith involves dividing the application into modules, typically using dynamic libraries (such as `.so` files on Linux, `.dll` files on Windows, or `.dylib` files on macOS). This approach allows for independent development, compilation, and in some cases, if plugins are used, deployment, providing a modular structure similar to microservices but within the constraints of a single application.

## Reusability

Reusability is the degree to which a product can be used as an asset in more than one system, or in building other assets. Having Reusable components is desirable for multiple reasons. First of all reusing something inflicts less work and thereby increases efficiency. Even more important, reuseable code reduces duplication. If something changes it changes in one place and not in many. Changes in many places tend to introduce new bugs because it is hard to find all places where the change is actually required.

## Analysability

Analysability is the degree of effectiveness and efficiency with which it is possible to assess the impact on a product or system of an intended change to one or more of its parts, to diagnose a product for deficiencies or causes of failures, or to identify parts to be modified.
In many ways analysability comes down to the core ingredients of clean code. The more readable out code is the better we will be understand what the current code is doing. This helps us to identify an faulty region inside an code and to estimate impact of change done in certain areas of the code.

## Modifiability

Modifiability is the degree to which a product or system can be effectively and efficiently modified without introducing defects or degrading existing product quality

## Testability