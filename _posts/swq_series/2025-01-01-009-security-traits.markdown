---
layout: post
read_time: true
show_date: true
title:  Security Traits
date:   2024-01-01 08:32:20 0000
description: ISO/IEC 25010 Security Traits
img: posts/common/QUALITY_SECURITY.png 
tags: [Software Quality Series, Test]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article,
you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** identifies security as one of the nine essential quality attributes for software. 
This attribute is further divided into six sub-traits:  

### Confidentiality

Degree to which a product or system ensures that data are accessible only to those authorized to have access.

Many companies define Roles. Each Role has certain competences attached to it. It's often required to ensure that
roles can only execute actions within its competences. 

### Integrity 

Degree to which a system, product or component ensures that the state of its system and data are protected from unauthorized modification or deletion either by malicious action or computer error.

One major threat data need more and more protection against is a [ransomware](https://en.wikipedia.org/wiki/Ransomware). Ransomware encrypts data. Its goals is not to steal but to blackmail companies to pay 
a ransom for decryption. But not all thread are malicious. A defect hard drive can render data just as useless 
as an attack.

### Non-repudiation 

Degree to which actions or events can be proven to have taken place so that the events or actions cannot be repudiated later.

Many actions have legal consequences and it is mandatory to proof who is responsible for certain actions.
When it comes to legal actions this attribute is tightly coupled Confidentiality, since the question will be
asked should the responsible person have had access to this part of the system and is liable.
Maybe it's required to find out if any person was involved at all or if was a technical error.
A blackbox aviation is often used to comprehend what happened.

### Accountability

Degree to which the actions of an entity can be traced uniquely to the entity.

### Authenticity

Degree to which the identity of a subject or resource can be proved to be the one claimed.

While confidentiality ensures that a user(can also be a technical system) is authorized to do something,
authenticity describes that the user is actually who it claims to be and how certain the system can 
be about that claim.

### Resistance 

Degree to which the product or system sustains operations while under attack from a malicious actor.

One of the major tools for cyber criminals are [Distributed Denial of Service (DDoS)](https://en.wikipedia.org/wiki/Denial-of-service_attack) attacks. A DDoS attack roots to put system under stress until it is unavailable.
Resistance against those kind of attacks is of major importance because unavailable services can turn off whole businesses. 

## How to Improve Security
[ISO 27001](https://www.iso.org/obp/ui/en/#iso:std:iso-iec:27001:ed-3:v1:en) defines a process to improve security 
in companies. Following this process is essential part to improve cybersecurity. 

[ISO 27002](https://www.iso.org/obp/ui/en/#iso:std:iso-iec:27002:ed-3:v2:en) describes practical applicable measures once sensitive systems are identified and a hazard analysis was performed. A few common methods(Not all part of the norm) will be explained here. In the end the required actions largely depend on the specific application.

1. **Mirror roles in your software**  
    It's useful to understand authorization and authentication as two different domains. Authorization should be based on roles. These roles are defined as part of the business logic. It can be useful to mirror available actions to a specific role in the API. A practical way to do so in web applications is for instance a [Hypermedia as the Engine of Application State (HATEOAS)](https://de.wikipedia.org/wiki/HATEOAS) api.

2. **Use secure login mechanism**  
    Roles defined in the businesslogic can be mirrored in the authentication context. A user can have one or multiple roles. Identity and Access Management software like [Keycloak](https://www.keycloak.org) provides such features out of the box. It's usually possible to choose between multiple login methods. Using a method with more than one factor should be the preferred option.

3. **Use logging**  
    How to implement logging best depends on the system architecture. A common approach is to implement event driven systems. In these systems publisher subscriber systems are required. Combining such a message based system with [Event Sourcing](https://martinfowler.com/eaaDev/EventSourcing.html). Event Sourcing persists events(messages) in 
    a hopefully readonly manner and can satisfy Non-repudiation and Accountability requirements. If the system is distributed software like [Kafka](https://kafka.apache.org) provides publisher subscriber features combined with Event Sourcing out of th box.

4. **Limit requests**  
    Protecting systems against attacks from outside or inside has so many facets to cover the it is impossible cover an at all meaningfull protion of this domain. A representative a usually easy to implement method is to implement 
    traffic policies. Tools like [Traefik](https://traefik.io/traefik/) allow to do so out of the box. Cloud services provide similar features. An example is AWS with Route 53. Limiting requests protects services from overload and
    implement basic protection against DDoS attacks.

5. **Check platform compliance**
    When using cloud services it's important not only to take the own software into consideration but also 
    to check the service provider compliance. Compliances will differ depending on the used services and their 
    hosting regions. Most cloud providers provide extensive documentation or even tool on this topic.

    - [AWS C5 Compliance](https://aws.amazon.com/compliance/bsi-c5/)
    - [Azure Compliance Manager](https://www.microsoft.com/en-us/security)


## Conclusion