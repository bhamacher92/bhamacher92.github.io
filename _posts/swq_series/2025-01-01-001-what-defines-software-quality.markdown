---
layout: post
read_time: true
show_date: true
title:  What Defines Software Quality?
date:   2024-01-01 08:32:20 0000
description: ISO/IEC 25010
img: posts/common/SOFTWARE_QUALITY.png 
tags: [Software Quality Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

We developers talk a lot about quality during the development process. But what does "quality" mean in the context of software? Most of us might immediately think of **maintainability**. Following the wisdom that software is never truly finished, it’s essential to keep it in a state where we can implement changes quickly without introducing new issues. This focus on maintainability is understandable, as losing control over the software means we can no longer improve or adapt it, rendering us ineffective as developers.

But is maintainability truly the highest goal in software development? The answer, as always, is: *it depends*. Different domains and use cases place different emphases on quality criteria. For instance, at the company where I currently work, many believe **usability** is the most critical factor. Their reasoning is clear: software that users avoid or that complicates previously simple processes has little to no value—and sometimes even negative value.

Consider banks, for example. For them, **security** is paramount. Since their business revolves around money, losing it due to poor security would be catastrophic. For banks, trust is everything; any breach of security could shatter customer confidence, who might start to withdraw their money.

These examples illustrate that different business contexts prioritize different quality criteria. To help navigate this complexity, standards like **[ISO/IEC 25010](https://www.iso.org/obp/ui/#iso:std:iso-iec:25010:ed-2:v1:en:term:3.4)** define nine key software quality criteria.

![Table Quality Criteria (Source: https://iso25000.com)](assets/img/posts/20250101/iso_25010_en.png)[Source: https://iso25000.com]

## The Software Quality Criteria

Initially, **ISO/IEC 25010** defined eight quality criteria. In 2023, an update added **safety** as an additional criterion and renamed **usability** to **interaction capability** and **portability** to **flexibility**. Below is an overview of the nine criteria:

### 1. Functional Suitability 
The degree to which the software satisfies stated or implied needs when used under specified conditions.

### 2. Performance Efficiency
The responsiveness, resource demand, and capacity (e.g. concurrent users) properties of a software system.

### 3. Compatibility
The ability of the software to operate in diverse environments, including interaction with other systems and coexistence with other software.

### 4. Interaction Capability (formerly Usability)
The degree to which the software can be used effectively and efficiently by specified users to achieve their goals, encompassing inclusivity and user engagement.

### 5. Reliability
The ability of the software to perform its required functions under stated conditions for a specified period.

### 6. Security
The capability of the software to protect data and ensure that it operates as intended, safeguarding against unauthorized access, attacks, or data breaches.

### 7. Maintainability
The ease with which the software can be modified to fix defects, adapt to new environments, or improve performance.

### 8. Flexibility (formerly Portability)
The ease with which the software can adapt to changes in its environment, including scalability and installation in different settings.

### 9. Safety
The capability of the software to ensure it does not endanger human health, property, or the environment. This includes fail-safe mechanisms, hazard warnings, and safe integration with other components.

## Conclusion

The **ISO/IEC 25010** framework provides a comprehensive overview of nine distinct quality criteria. At first glance, all these criteria appear equally important. However, projects rarely have the budget or resources to address them all to the same degree. It falls to developers and domain experts to determine which criteria matter most for a given project.

For instance, **web applications** often demand higher security measures than **desktop applications**. Similarly, **business software** might tolerate lower interaction capability standards compared to **consumer-facing software**. A practical approach is to identify the **top three criteria** for your project and prioritize them. This doesn’t mean ignoring the other criteria altogether but focusing resources where they deliver the most value.

Trade-offs are inevitable. A good example is **two-factor authentication**: it enhances security but can reduce interaction capability. Balancing such trade-offs is a key part of delivering high-quality software that meets the needs of both the business and its users.

In following articles, we will take a closer look at the individual criteria and what they mean in more detail or go to [ISO25000](https://iso25000.com/index.php/en/iso-25000-standards/iso-25010)

### Where to go from here

- [Maintainability]({% post_url swq_series/2025-01-01-002-maintainability-traits %})
- [Compatibility]({% post_url swq_series/2025-01-01-003-compatibility-traits %})
- [Flexibility]({% post_url swq_series/2025-01-01-004-flexibility-traits %})
- [Functional Suitabilty]({% post_url swq_series/2025-01-01-005-functionality-traits %})
- [Reliability]({% post_url swq_series/2025-01-01-006-reliability-traits %})
- [Performance Efficiency]({% post_url swq_series/2025-01-01-007-performance-traits %})
- [Interaction Capability]({% post_url swq_series/2025-01-01-008-interaction-capability-traits %})

