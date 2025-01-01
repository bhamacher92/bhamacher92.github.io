---
layout: post
read_time: true
show_date: true
title:  The Drivers of Software Architecture
date:   2024-12-31 08:32:20 0000
description: Just a test
img: posts/common/ARCHITECTURE_DRIVERS.png 
tags: [Application Architecture Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

Software architecture has multiple definitions, provided by institutions like the [SEI](https://www.sei.cmu.edu/our-work/software-architecture/) or [IEEE](https://www.ieee.org) in [IEEE/ISO/IEC 42010](https://standards.ieee.org/ieee/42010/6846/):

> **Architecture:** (system) fundamental concepts or properties of a system in its environment embodied in its elements, relationships, and in the principles of its design and evolution.

The [International Software Architecture Qualification Board (ISAQB)](https://www.isaqb.org/de/) has identified the following recurring factors that collectively define the architecture of a software system:

- **Component:** A structural part or building block of systems.
- **Structure:** An arrangement of interrelated elements that together perform a common task.
- **Relationships:** The coupling of elements, enabling them to cooperate or exchange data.
- **Design or Architecture Decisions:** A system or its architecture evolves from an arbitrary number of decisions of various kinds.
- **Cross-Cutting Concepts:** Rules or heuristics valid at several locations or points throughout the system or its development.
- **Decomposition:** Breaking down larger entities into smaller components.


## Implicit vs. Explicit Architecture

Software always has an architecture, whether implicit or explicit. The difference lies in the driving factors:

- **Implicit architecture** is driven by the immediate needs of developers.
- **Explicit architecture** is driven by business needs.

In practice, software typically exhibits a mix of both.

### Implicit Architecture

Implicit architectural decisions are made without extensive thought and are dictated by immediate problems, usually ignoring cross cutting problems. [Test-Driven Development (TDD)](https://www.davefarley.net/?p=220) enhances implicit architectural decisions on a small scale. TDD ensures that new code satisfies all functional requirements, although it does not strongly focus on aligning with business goals.

While TDD is an excellent method to create better code faster, it primarily addresses technical—not strategic—objectives.

### Explicit Architecture

For a business to succeed, software must align with business goals through deliberate, explicit architectural decisions. In the [Software Quality Series]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}), I explored software quality traits, defined in ISO 25010, which can be used to describe the "value" of software:

- Functional Suitability
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

Though comprehensive ISO 25010 is controversial because it has some shortcomings regarding overall business goals and focuses only on the product itself. As described in [Shortcomings of ISO 25010](https://www.innoq.com/en/articles/2023/02/iso-25010-shortcomings/) by Dr. Gernot Starke, it is crucial to consider all business goals when making architectural decisions. 

Businesses often judge projects based on the iron triangle. The iron triangle extends the ISO 25010 definition of quality by including two additional traits: **Time** and **Budget**. Scope, when defined as functional and non-functional requirements, largely matches the ISO 25010 quality definition.

<img src="assets/img/posts/20250201/IronTriSTB.svg" alt="Iron Triangle (Scope, Time, Budget)" style="width:50%;">

Therefore, the ISAQB proposes a slightly different variation of the iron triangle, where **scope** is replaced by **quality**:

<img src="assets/img/posts/20250201/IronTriQTB.svg" alt="Iron Triangle (Quality, Time, Budget)" style="width:50%;">

Discussing a triangle like this it often comes down to pick 2 and scale the third criteria. This suggests that improving quality will take more time or cost more. When quality is equated with scope, this is true. Less work takes less time and consequently costs less. However, more commonly, quality is interpreted as maintainability in this discussions drawing a misguiding picture.

## There Is NO Trade-Off Between Speed and Quality

In 2013, the first [State of DevOps Report](https://www.puppet.com/resources/history-of-devops-reports#2013) was released. Since then, the industry has learned that there is no trade-off between speed and quality (maintainability). On the contrary, higher code quality increases development speed and reduces costs in projects with noticeable complexity.

The research presented in these reports, and condensed in the book [*Accelerate: Building and Scaling High Performing Technology Organizations*](https://www.oreilly.com/library/view/accelerate/9781457191435/) by Nicole Forsgren et al., demonstrates that continuous delivery and consequently high test coverage, and automated testing drive organizational performance (defined as profitability, market share, and productivity).

## Conclusion

Understanding the different ways quality is defined by stakeholders enables architects to align decisions with both technical and business needs. By mapping architectural choices to quality traits, architects can justify their decisions to stakeholders effectively. Since high code quality supports business goals, well-designed architectures bridge gaps between departments, fostering collaboration instead of conflict. Ultimately, architecture is not just about building software but enabling sustainable growth and collaboration across stakeholders.

## Where to Go Next

Based on the drivers of architecture introduced here, the following series will explore available architectural decisions at different levels of abstraction, providing guidance on when to make which decision and how these decisions can affect product quality and business goals.

- [Software Architectural Styles (coming soon)]()

---
If you haven’t read the software quality series yet, you can check it out to gather foundational knowledge [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).


**[Next article in this series->]({% post_url aa_series/2025-02-01-001-architecture-drivers %})**