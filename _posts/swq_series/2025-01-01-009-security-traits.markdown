---
layout: post
read_time: true
show_date: true
title:  Security Traits
date:   2024-12-22 08:32:20 0000
description: ISO/IEC 25010 Security Traits
img: posts/common/QUALITY_SECURITY.png 
tags: [Software Quality Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article,
you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines security, one of the nine software quality traits, as 
the degree to which a product or system defends against attack patterns by malicious actors and protects information and data so that persons or other products or systems have the degree of data access appropriate to their types and levels of authorization.
It further breaks down security into six sub-traits: 

### Confidentiality

The degree to which a product or system ensures that data is accessible only to those authorized to have access.

Many companies define roles, with each role having specific competencies attached. It's crucial to ensure that roles are restricted to executing actions only within their competencies.

### Integrity

The degree to which a system, product, or component protects the state of its system and data from unauthorized modification or deletion, whether caused by malicious actions or errors.

One growing threat to data integrity is [ransomware](https://en.wikipedia.org/wiki/Ransomware), which encrypts data to extort ransom for decryption. However, threats are not always malicious—a defective hard drive can render data equally unusable.

### Non-repudiation

The degree to which actions or events can be proven to have occurred, ensuring that they cannot later be denied.

Many actions have legal implications, requiring proof of accountability. This attribute often aligns closely with confidentiality, as questions arise about whether the responsible person should have had access to specific parts of the system. In some cases, determining whether a person was involved at all—or whether a technical error occurred—is critical. For instance, black box data in aviation is used to reconstruct events.

### Accountability

The degree to which an entity's actions can be uniquely traced back to it.

### Authenticity

The degree to which the identity of a subject or resource can be proven as claimed.

While confidentiality ensures that a user (or system) is authorized, authenticity verifies that the user is genuinely who they claim to be and assesses the certainty of that verification.

### Resistance

The degree to which the product or system continues operating while under attack from malicious actors.

A common form of attack is the [Distributed Denial of Service (DDoS)](https://en.wikipedia.org/wiki/Denial-of-service_attack) attack, which overwhelms systems to make them unavailable. Building resistance to such attacks is vital, as service unavailability can disrupt entire businesses.

## How to Improve Security

[ISO 27001](https://www.iso.org/obp/ui/en/#iso:std:iso-iec:27001:ed-3:v1:en) outlines a process to improve security in organizations, forming a cornerstone of cybersecurity strategies. In Germany, the new [DigiG](https://www.recht.bund.de/bgbl/1/2024/101/VO.html) mandates that the health industry comply with these standards starting in July 2025. It can be expected that other sectors handling sensitive data will follow sooner or later.  

[ISO 27002](https://www.iso.org/obp/ui/en/#iso:std:iso-iec:27002:ed-3:v2:en) provides actionable measures after sensitive systems are identified and hazard analyses are performed. Below are several common methods (not all part of the standard) for enhancing security. Ultimately, required actions depend on the specific application.

1. **Mirror roles in your software**  
   Authorization and authentication should be treated as separate domains. Authorization is role-based, with roles defined as part of business logic. Mirroring available actions to specific roles in the API can be effective. A practical example in web applications is using a [Hypermedia as the Engine of Application State (HATEOAS)](https://de.wikipedia.org/wiki/HATEOAS) API.

2. **Use secure login mechanisms**  
   Roles defined in the business logic can integrate within the authentication context. Users can have one or multiple roles. Identity and Access Management tools like [Keycloak](https://www.keycloak.org) support this out of the box. Multi-factor authentication should be the preferred login method.

3. **Implement logging**  
   Logging requirements depend on system architecture. Event-driven systems often utilize publisher-subscriber mechanisms combined with [Event Sourcing](https://martinfowler.com/eaaDev/EventSourcing.html). Event Sourcing records events immutably, meeting non-repudiation and accountability needs. For distributed systems, tools like [Kafka](https://kafka.apache.org) provide such capabilities.

4. **Limit requests**  
   Protecting systems from both external and internal attacks encompasses so many facets that it is nearly impossible to address a meaningful portion of this domain comprehensively. A representative and relatively easy-to-implement approach is the use of traffic policies.
   Request limiting is a straightforward yet effective way to protect systems from overload and DDoS attacks. Tools like [Traefik](https://traefik.io/traefik/) offer such features, cloud providers like AWS with Route 53 offer traffic management as well.  

5. **Check platform compliance**  
   When using cloud services, it’s essential to evaluate both your software and your service provider’s compliance. Compliance varies by service and hosting region. Many cloud providers offer extensive documentation and tools to help assess compliance:  

    - [AWS C5 Compliance](https://aws.amazon.com/compliance/bsi-c5/)  
    - [Azure Compliance Manager](https://www.microsoft.com/en-us/security)  

## Conclusion

Security is a critical aspect of software quality, directly affecting data protection, system reliability, and user trust. The principles outlined in ISO standards like 25010, 27001, and 27002 provide structured approaches to addressing security challenges. By adopting role-based access, secure login mechanisms, logging, traffic control, and compliance checks, organizations can enhance their security. For certain software prioritizing security is not only a technical necessity but also a fundamental business responsibility in today’s digital landscape.

**[<- Pervious article in this series]({% post_url swq_series/2025-01-01-008-interaction-capability-traits %})**      **[Next article in this series->]({% post_url swq_series/2025-01-01-010-safety-traits %})** 