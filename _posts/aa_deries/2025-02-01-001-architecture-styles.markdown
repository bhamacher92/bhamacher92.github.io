---
layout: post
read_time: true
show_date: true
title:  The Drivers of Software Architecture
date:   2024-12-31 08:32:20 0000
description: Just a test
img: posts/common/QUALITY_SAFETY.png 
tags: [Application Architecture Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---


Software architecture has multiple definitions. Provided by institutions like the [SEI](https://www.sei.cmu.edu/our-work/software-architecture/) or [IEEE](https://www.ieee.org) in [IEEE/ISO/IEC 42010](https://standards.ieee.org/ieee/42010/6846/):

*Architecture: (system) fundamental concepts or properties of a system in its environment
embodied in its elements, relationships, and in the principles of its design and evolution.*


Therefore the [International Software Architecture Qualification Board (ISAQB)](https://www.isaqb.org/de/) has extracted the following reoccurring factors which together define 
the architecture of a software system:

- Component: Structural part or building block of systems.
- Structure: An arrangement or interrelated elements that together perform a common task.
- Relationships: The coupling of elements, enabling them to cooperate or exchange data.
- Design or Architecture Decisions: A system or its architecture evolves from an arbitrary number of decisions for all kinds.
- Cross Cutting concepts: Rules of heuristics valid at several locations or points throughout the system or its development.
- Decomposition: Breaking down larger things into smaller things.

## Implicit vs Explicit Architecture

Software always has an architecture, whether it's implicit or explicit. The difference between implicit architecture and explicit architecture is
that implicit architecture is driven by concrete and current needs of developers while explicit architecture is driven by business needs.
Software will usually always be a mixture of both.

**Implicit Architecture**
Implicit architecture decisions are made without further thought and are just required by a current problem. [Test Driven Development (TDD)](https://www.davefarley.net/?p=220) is a method
that improves implicit architecture decisions in a tiny scale. TDD is like a journey. When starting the development it's not clear what the code will look like. 
But if TDD is done right it will ensure that the new block of code will satisfy all functional requirements. Since implicit architecture is not planned the rest of this 
article will be concerned with explicit architecture.

In my opinion TDD is a perfect method to create better code faster, but it's is not strongly focused on business goals.

**Explicit Architecture**
For a business to be successful it is important that software contributes to it's business goals by making explicit decisions. I recently published the [Software Quality Series]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}). It is concerned with software quality traits. The nine software quality traits

- Functional suitability
- Reliability
- Performance efficiency
- Usability
- Maintainability
- Security
- Compatibility
- Portability

defined in ISO 25010 can be used describe the value of software. Knowing these traits can help to make informed decisions, based on long and short term business priorities.


## ISO 25010 Shortcomings

ISO 25010 is controversial because it has some shortcomings regarding overall business goals and is focused only on the product it self as described in [Shortcomings of ISO 25010](https://www.innoq.com/en/articles/2023/02/iso-25010-shortcomings/) authored by Dr. Gernot Starke. It is important that all business goals are taken into consideration when architecture decisions are made.
Business usually judges projects based on the iron triangle. The iron triangle extends the ISO 25010 definition of quality by two additional traits: Time and Budget. Scope when defined as 
functional and non-functional requirements very much matches the ISO 25010 Quality definition. 
<img src="assets/img/posts/20250201/IronTriSTB.svg" alt="Iron Triangle (Scope, Time, Budget)" style="width:50%;">

Therefore the ISAQB has a slightly different variation of the iron triangle, where scope is replaced by quality.
[](https://www.isaqb.org/blog/requirements-for-software-architects-part-1-the-most-effective-requirements-are-produced-through-requirements-engineering/)

<img src="assets/img/posts/20250201/IronTriQTB.svg" alt="Iron Triangle (Quality, Time, Budget)" style="width:50%;">

It's often said that you have to pick 2 of 3 in this ISAQB version of the triangle. Suggesting that  a improvement in quality will take more time or cost more.
When quality is similar to scope that is true. Since less works takes less time and in consequence costs less money. But much more common is that quality is set equal 
to maintainability. 

## There is NO trade off between speed and quality

In 2013 the first [state of devops report](https://www.puppet.com/resources/history-of-devops-reports#2013) was released. Since then the industry had the chance 
to learn that there is no trade off between speed and quality(maintainability). Instead quite the opposite is true. Higher code quality will increase development speed and reduce cost in projects with noticeable complexity. The research done in these reports and 2017 condensed into the book[Accelerate Building and Scaling High Performing Technology Organization](https://www.oreilly.com/library/view/accelerate/9781457191435/) authored by Nicole Forsgren et. al. describes the research and proofs that continuous delivery and therefore high test coverage combined with automated testing is a driver of organizational performance (defined as profitability, market share and productivity). 

## Aligning Business and Development

These insights how quality is defined by different stakeholders allow us to perfectly aligns architecture decisions with the needs of all stakeholders and
provides the required arguments to justify our decisions in front of other stakeholders as long as they can be mapped back to one of the here described quality traits.
Since there is no trade off between code quality and business goals but they align perfectly well it's possible to create architectures that build bridges between departments where
we find an abyss far to often.



