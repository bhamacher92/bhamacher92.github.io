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

The [International Software Architecture Qualification Board (ISAQB)](https://www.isaqb.org/de/) has identified the following recurring factors that together 
define the architecture of a software system:

- Component: Structural part or building block of systems.
- Structure: An arrangement or interrelated elements that together perform a common task.
- Relationships: The coupling of elements, enabling them to cooperate or exchange data.
- Design or Architecture Decisions: A system or its architecture evolves from an arbitrary number of decisions for all kinds.
- Cross Cutting concepts: Rules of heuristics valid at several locations or points throughout the system or its development.
- Decomposition: Breaking down larger things into smaller things.

## Implicit vs Explicit Architecture

Software always has an architecture, whether implicit or explicit. The difference lies in the driving factors:

- **Implicit architecture** is driven by the immediate needs of developers.
- **Explicit architecture** is driven by business needs.

In practice, software typically exhibits a mix of both.

### Implicit Architecture

Implicit architectural decisions are made without extensive thought and are dictated by current problems. [Test-Driven Development (TDD)](https://www.davefarley.net/?p=220) enhances implicit architecture decisions on a small scale. TDD ensures that new code satisfies all functional requirements, although it does not strongly focus on aligning with business goals.

While TDD is an excellent method to create better code faster, it primarily addresses technical, not strategic, objectives.

### Explicit Architecture

For a business to succeed, software must align with business goals through deliberate, explicit architectural decisions. In the [Software Quality Series]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}), I explored software quality traits, defined in ISO 25010, which can describe the value of software:

- Functional suitability
- Reliability
- Performance Efficiency
- Interaction Capability
- Maintainability
- Security
- Compatibility
- Flexibility
- Safety

Understanding these traits enables informed decisions based on long- and short-term business priorities.


## ISO 25010 Shortcomings

ISO 25010 is controversial because it has some shortcomings regarding overall business goals and is focused only on the product it self as described in [Shortcomings of ISO 25010](https://www.innoq.com/en/articles/2023/02/iso-25010-shortcomings/) authored by Dr. Gernot Starke. It is important that all business goals are taken into consideration when architecture decisions are made.
Business usually judges projects based on the iron triangle. The iron triangle extends the ISO 25010 definition of quality by two additional traits: Time and Budget. Scope when defined as 
functional and non-functional requirements very much matches the ISO 25010 Quality definition. 
<img src="assets/img/posts/20250201/IronTriSTB.svg" alt="Iron Triangle (Scope, Time, Budget)" style="width:50%;">

Therefore the ISAQB has a slightly different variation of the iron triangle, where scope is replaced by quality.
[](https://www.isaqb.org/blog/requirements-for-software-architects-part-1-the-most-effective-requirements-are-produced-through-requirements-engineering/)

<img src="assets/img/posts/20250201/IronTriQTB.svg" alt="Iron Triangle (Quality, Time, Budget)" style="width:50%;">

It's often said that you have to pick 2 of 3 in this ISAQB version of the triangle. Suggesting that  a improvement in quality will take more time or cost more.
When quality is similar to scope that is true. Since less work takes less time and in consequence costs less money. But much more common is that quality is set equal 
to maintainability. 

## There is NO trade off between speed and quality

In 2013 the first [state of devops report](https://www.puppet.com/resources/history-of-devops-reports#2013) was released. Since then the industry had the chance 
to learn that there is no trade off between speed and quality(maintainability). Instead quite the opposite is true. Higher code quality will increase development speed and reduce cost in projects with noticeable complexity. The research done in these reports and 2017 condensed into the book[Accelerate Building and Scaling High Performing Technology Organization](https://www.oreilly.com/library/view/accelerate/9781457191435/) authored by Nicole Forsgren et. al. describes the research and proofs that continuous delivery and therefore high test coverage combined with automated testing is a driver of organizational performance (defined as profitability, market share and productivity). 

## Aligning Business and Development

Understanding the different ways quality is defined by stakeholders enables architects to align decisions with both technical and business needs. By mapping architectural choices to quality traits, architects can justify their decisions to stakeholders effectively. Since high code quality supports business goals, well-designed architectures bridge gaps between departments, fostering collaboration instead of conflict.

## Conclusion

Software architecture serves as a crucial bridge between technical and business domains. By balancing architectural options, based on quality traits from ISO 25010, and business objectives like time and budget, architects can create systems that are robust, maintainable, and aligned with organizational goals. Ultimately, architecture is not just about building software but enabling sustainable growth and collaboration across stakeholders.

### Where to go next

Based on these here introduced drivers of technology the following this series will show available architecture decisions on different abstractions levels providing
some guidance when to make which decision and how these decisions can affect product quality and business goals.

If you have not read the software quality series yet you can check it out and gather some foundational knowledge [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).

**[Next article in this series->]({% post_url aa_series/2025-02-01-001-architecture-drivers %})**

