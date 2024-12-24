---
layout: post
read_time: true
show_date: true
title:  Interaction Capability Traits
date:   2024-12-22 08:32:20 0000
description: ISO/IEC 25010 Interaction Capability Traits 
img: posts/common/QUALITY_USABILITY.png 
tags: [Software Quality Series] 
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article,
you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines interaction capability, one of the nine software quality traits, as 
the degree to which a product or system can be interacted with by specified users to exchange information via the user interface to complete specific tasks in a variety of contexts of use.
It further breaks down interaction capability into three sub-traits: 
*Before 2023, this attribute was referred to as usability and included some differing sub-traits now encompassed by user engagement.*

### Appropriateness Recognizability  
Degree to which users can recognize whether a product or system is appropriate for their needs.

In today’s world, filled with tools designed for various purposes, identifying the right one can be daunting. 
Reading extensive documentation or testing tools over time only to discover they don’t fit the need is frustrating. 
Tools that clearly communicate their purpose can attract the right audience effectively.

### Learnability  
Degree to which the functions of a product or system can be learnt to be used by specified users within a specified amount of time.

### Operability  
Degree to which a product or system has attributes that make it easy to operate and control.

For example, CAD programs that support 3D mice or industrial systems that combine mechanical buttons with 
graphical user interfaces demonstrate excellent operability.
Conversely, using resistive touchpads with gloves highlights the challenges of poorly designed operability.

### User Error Protection  
Degree to which a system prevents users against operation errors.

Many developers use the adage, "The error lies between chair and keyboard"
to dismiss their responsibility to provide robust workflows and proper data validation. 
While this approach might simplify development, it often leads to burdensome software that hinders rather than helps users.

### User Engagement  
Degree to which a user interface presents functions and information in an inviting and motivating manner encouraging
continued interaction.

User engagement integrates several contemporary trends, particularly in the B2C and B2B sectors. 
It encompasses traits such as aesthetics, recognizability which were distinct 
usability sub-traits before 2023, but also includes additional facets like pleasure and satisfaction.

### Inclusivity  
Degree to which a product or system can be used by people of various backgrounds (such as people of various ages, 
abilities, cultures, ethnicities, languages, genders, economic situations, etc.).

### User Assistance  
Degree to which a product can be used by people with the widest range of characteristics and capabilities to achieve
specified goals in a specified context of use.

Accessibility, a key aspect of user assistance, is governed in Europe by [EN 301 549](https://www.etsi.org/deliver/etsi_en/301500_301599/301549/03.02.01_60/en_301549v030201p.pdf),
enforced through the [European Accessibility Act](https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32019L0882),
effective from 2025. The U.S. has had similar laws since the 1990 Americans with Disabilities Act.  

The European Accessibility Act mandates that the following product categories comply with its accessibility requirements:  
- Personal computers and operating systems *(§2.1a)*  
- Self-service terminals, such as ATMs *(§2.1b)*  
- Interactive consumer terminal equipment, such as TVs *(§2.1c/§2.1d)*  
- Phones and related communication equipment and services *(§2.1c/§2.2a)*  
- Transportation access services *(§2.2c)*  
- Banking services *(§2.2d)*  
- E-books *(§2.2e)*  
- E-commerce *(§2.2f)*  

Accessibility often overlaps with other usability traits and poses both challenges and opportunities for the software industry.

### Self-Descriptiveness  
Degree to which a product presents appropriate information, where needed by the user, to make its capabilities and use immediately
obvious to the user without excessive interactions with a product or other resources 
(such as user documentation, help desks or other users).

Intuitive, self-descriptive software reduces the learning curve, making it more user-friendly and accessible.

## How to Improve Interaction Capability  

Improving interaction capability depends on the specific application. However, the following strategies are universally effective starting points for enhancing usability:  

1. **Define a Clear Use Case**  
   Begin with a descriptive logo and a concise introduction to the software’s purpose. 
   The ability to recognize a software's use case at a glance—such as through its logo—represents probably the highest level of 
   appropriateness recognizability.

2. **Reduce Barriers to Entry**  
   Provide an intuitive, easy-to-use interface. Major companies like Apple, Google, and Microsoft have established familiar 
   interaction models. Adopting these can improve usability and aesthetics.  
   - [Apple: Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines)  
   - [Google: Design Guidelines](https://developers.google.com/assistant/interactivecanvas/design)  
   - [Microsoft: Design Guide](https://learn.microsoft.com/en-us/windows/apps/design/basics)  

   Depending on the context, it may be more advantageous to tailor applications to fit specific environments or 
   adapt them for cross-platform compatibility.

3. **Flatten the Learning Curve**  
   For complex use cases or significant changes in software, include tutorials or contextual help when users encounter 
   new features for the first time.  

4. **Offer Interactive Assistance**  
   Validate user input and provide meaningful feedback on errors. For instance, password requirements 
   should be clearly communicated, and invalid inputs should be handled proactively with meaningful 
   and helpful error messages.  

5. **Implement Accessibility Features**  
   Add features like screen reader compatibility, high-contrast modes, and adjustable text sizes as outlined in EN 301 549. These enhancements are not only required by law but also expand the potential user base.  

## Conclusion  

Interaction capability, as defined by ISO/IEC 25010, prioritizes clarity, inclusivity, and user-friendliness.
By integrating these principles into software design, developers can create solutions 
that are not only functional but also enjoyable and accessible, fostering long-term user satisfaction and success.  

**[<- Pervious article in this series]({% post_url swq_series/2025-01-01-007-performance-traits %})**      **[Next article in this series->]({% post_url swq_series/2025-01-01-009-security-traits %})** 