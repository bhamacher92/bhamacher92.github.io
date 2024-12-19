---
layout: post
read_time: true
show_date: true
title:  Interaction Capability Traits
date:   2024-01-01 08:32:20 0000
description: ISO/IEC 25010 Interaction Capability Traits 
img: posts/common/QUALITY_USABILITY.png 
tags: [Software Quality]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article, you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines performance efficiency as one of the nine key quality attributes for software.
It further breaks performance efficiency into eight sub-traits:
*Before 2023 this trait was called usability and had a few sub-traits now covered by 
user engagement*

### Appropriateness Recognizability
Degree to which users can recognize whether a product or system is appropriate for their needs.

Todays world is full of tools responsible for various things. Finding the right one can be challenging 
and reading a comprehensive documentation or testing the tool for a longer period of time only to find
out that it is not fitting can be daunting. Tools that present their use case clear are helpful to attract
the correct audience to a product. 

### Learnability 
Degree to which the functions of a product or system can be learnt to be used by specified users within a specified amount of time.

### Operability 
Degree to which a product or system has attributes that make it easy to operate and control.

A good example for operability is the support of 3D Mouses in CAD programs or the combination of mechanical buttons with 
a graphical user interface for presentation in an industry context. Who ever had to use a resistive touch pad with gloves nows 
the pain this concept introduces.

### User error protection
Degree to which a system prevents users against operation errors.

Who does not know the statement "The error is between chair and keyboard". Using this approach frees developers from the responsebility
to provide an proper workflow with proper data validation. Though this might be charming for developers it one of the major problems 
that make software more of a burden than a relief.

### User engagement 
Degree to which a user interface presents functions and information in an inviting and motivating manner encouraging continued interaction.

User engagement combines multiple currently important trends especially in the b2c but also in the b2b sector. It combines 
former (before 2023) individual traits like aesthetics and recognizability and adds traits like pleasure and satisfaction.

### Inclusivity
Degree to which a product or system can be used by people of various backgrounds (such as people of various ages, 
abilities, cultures, ethnicities, languages, genders, economic situations, etc.).

### User assistance 
Degree to which a product can be used by people with the widest range of characteristics and capabilities to achieve specified goals in a specified context of use.

Today user assistance or more precise accessibility is also covered by EN 301 549 in Europe which is enforced by the [European Accessibility Act](https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32019L0882) released in 2019 that will render this mandatory from 2025. The USA released with The Americans with Disabilities Act similar laws already in 1990.

The European Accessibility Act defines that following product categories have to comply with 
the applicable accessibility requirements in §2.1 and §2.2:

- Personal Computers and operating systems *(§2.1a)*
- Self-service terminals like Automated teller machines (ATMs) *(§2.1b)*
- Interactive consumer terminal equipment like TVs *(§2.1c/§2.1d)*
- Phones and related equipment and communication(messaging) and audio visual services *(§2.1c/§2.2a)*
- Services that provide access to transportation *(§2.2c)*
- Banking services *(§2.2d)*
- E-books *(§2.2e)*
- E-commerce *(§2.2f)*

Accessibility features have intersections with other usability traits described here. Some 
of them are already common in software, while others present the industry with new challenges.


### Self-descriptiveness  
Degree to which a product presents appropriate information, where needed by the user, to make its capabilities and use immediately
obvious to the user without excessive interactions with a product or other resources 
(such as user documentation, help desks or other users).

When software is self-descriptive makes use intuitive. The more self-descriptive software is the lower the learnability 
requirements since their is nothing to learn.

## How to Improve Interaction Capability

How to enhance interaction capabilities largely depends on the application. 
The following concepts are widely applicable good start to archive good useability.

1. **Clear use case**

A good start for good interaction capability is to provide a good descriptive logo and a short introduction what the software is doing.
Recognizing the use case of software by the logo is most probably the highest archivable level of appropriateness recognizability.

2. **Lower the entry hurdle**
Once software is in use providing an intuitive usable UI is important.Huge companies like apple, google or microsoft implemented 
well known interaction concepts most people are used to: Adapting them will improve intuitive use and provide appealing aesthetics
The following list provides links to these guidelines:
- [Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines)
- [Google Design guidelines](https://developers.google.com/assistant/interactivecanvas/design)
- [Microsoft Design Guide](https://learn.microsoft.com/en-us/windows/apps/design/basics/)

Depending on the application it can be useful to fit an application perfectly into the environment or to use an adapted system
create for example multi platform applications.

3. **Flatten the learning curve**
For complex use cases or changes in software it can be helpful provide a help section or even better show a tutorial 
a feature is used the first time. 

4. **Provide interactive help**
Validating user input and providing meaningful feedback on error is an very important additional improvement. For example having password 
rules but not providing any hints what is allowed is not very useful. Accepting password that are not accepted by the business logic is even worse.

5. **Implement accessibility features**
Adding accessibility features like compatibility with screen readers, high contrast modes or variable text size like described in EN 301 549
are not only mandatory but allow access to a complete new user group.




## Conclusion

Performance efficiency, as defined by ISO/IEC 25010, embodies a user-centric philosophy that prioritizes clarity, 
inclusivity, and ease of use. By embracing these traits, developers can craft software that is not only functional
but also delightful and accessible, fostering long-term user satisfaction and success.