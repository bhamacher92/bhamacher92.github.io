---
layout: post
read_time: true
show_date: true
title:  Safety Traits
date:   2024-01-01 08:32:20 0000
description: ISO/IEC 25010 Security Traits
img: posts/common/QUALITY_SAFETY.png 
tags: [Software Quality Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article,
you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** identifies safety as one of the nine essential quality attributes for software. This attribute is further divided into five sub-traits:  

### Operational constraint

Degree to which a product or system constrains its operation to within safe parameters or states when encountering operational hazard.

A system might be capable to operate within parameters these are not safe under all conditions. The system should 
prevent operators and itself from exposing  people, property or the environment to unacceptable risk and limit itself
accordingly.

### Risk identification

Degree to which a product can identify a course of events or operations that can expose life, property or environment to unacceptable risk.

A system might foresee risk but not intervene or act. A fitting example is a fitness tracker. The tracker observers 
the heart rate and can identify spikes logging these data for later analysis.


### Fail safe

Degree to which a product can automatically place itself in a safe operating mode, or to revert to a safe condition in the event of a failure.

The system shall provide features to identify from itself emerged hazards and return to a safe state on it's own.
A simple example is an autonomous car that slowly stops or returns control to the operator if sensors are not working properly.

### Hazard warning

Degree to which a product or system provides warnings of unacceptable risks to operations or internal controls so that they can react in sufficient time to sustain safe operations.

ISO 25010 provides a good example:
A pedestrian traffic light gives a warning sign, such as showing the remaining seconds, before reverting from green to yellow or red.

### Safe integration

Degree to which a product can maintain safety during and after integration with one or more components.

A sub-system can not looked upon without it's rest of the system. A for itself save subsystem might be save,
but combined with other systems safety can not be guaranteed anymore. For simplicity let's assume we consider a system that works safe 90% of the time save. We create two subsystem. Both match exactly 90%. Integrating them should be safe, shouldn't it. We implement a pipes and filters pattern. Using information provided by one sub-system in the next. A worst case contemplation would only end up with a system that only operates safe 81% of the time. The result is the product of both probabilities. The worst case contemplation assumes that the systems are never unsafe at the same time.

## How to Improve Safety
Safety is a complex and wide field. What's a hazard very much depends on the system and its environment.
Though **ISO/IEC 25010** divagates from this definition this overview will define a safety to be acceptable level of risk. WHile risk is the product of probability and severity. 

[IEC 61508](https://ieeexplore.ieee.org/document/4493673) provides standards for "functional safety of electrical/electronic/programmable electronic safety related systems". Especially interesting are part1 for classification and part7 as it describes measures related to software. IEC 61508 focuses on systems that can physically endanger people and therefore realtime systems. Real time requirements are not mandatory given. For instance a chatbot can give dangerous advice. This would fall within safety defined by ISO/IEC 25010 but is usually not time critical.

*Note: IEC 61508 is one of many norms is this area. For Instance automotive and health have specialized norms.
Though deviating in some aspects the concepts and methods are the same.*

Please keep in mind that equally to security safety is a field many people spend their whole carrier and a proper design requires specialized professionals in this area. Any uneducated attempt to figure these things out alone 
will end in inevitable failure.
However, for better understanding below are some helpful information how to indentify need for measures and what potential measures are provided by IEC 61508-7.

### The safety-lifecycle
1. **Finding the Hazard**
    Once the system is described it's possible to determine hazards. These hazards are expressed in severity levels and likelihood. Part of the hazard analysis is to determine critical system path. A critical path describes all system components that can trigger a hazardous failure. A common approach to bring these things together and determine where measures must be taken is a [Failure Modes and Effects Analysis (FMEA)](https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis).

    The following example shows severity categories:

| <sub>**1** <br> Negligible</sub> | <sub>**2** <br> Minor<sub> | <sub>**3** <br> Moderate</sub> | <sub>**4** <br> Major </sub>| <sub> **5** <br> Catastrophic </sub> |
|:---------------------------------:|:--------------------------------:|:----------------------------------:|:----------------------------------:|:-------------------------------------:|
| <sub align="left"> Minor injury, medical treatment case with/or restricted work case </sub> | <sub align="left">Serious injury or lost work case</sub> | <sub align="left">Major or multiple injuries, reversible injury, or non-disabling permanent injury</sub> | <sub align="left">Single fatality or permanent disability</sub> | <sub align="left">Multiple fatalities, up to 10 fatalities</sub> |  

<sub>[Table Source: versatec](https://versatec.nl/wp-content/uploads/2018/12/SIL-Platform-Risk-Matrix-Guide-Oct2018-Final-LR-1.pdf)</sub>

  


2. **Define System Safety Requirements**
    Depending on the system safety requirements measures have to be taken to reduce risk to an acceptable level.
    The table below maps risk to [Safety Integration Levels (SIL)](https://en.wikipedia.org/wiki/Safety_integrity_level). SIL defines a risk reduction factor. SIL dictates where and to what extend measures are 
    required.

| <sub>**Likelihood**</sub>        | <sub>**1 <br> Negligible**</sub>          |<sub> **2 <br> Minor**  </sub>    | <sub>**3 <br> Moderate**  </sub>    | <sub> **4 <br> Major**  </sub>     | <sub> **5 <br> Catastrophic** </sub>    |
|----------------------------------|:-----------------------------------------:|:--------------------------------:|:-----------------------------------:|:----------------------------------:|:---------------------------------------:|
| <sub>**7:**  > 1</sub>             | <sub>SIL 3</sub>                          | <sub>X</sub>                     | <sub>X</sub>                        | <sub>X</sub>                       | <sub>X</sub>                            |
| <sub>**6:**  ($10^{-1}$ - 1)**</sub>   | <sub>SIL 2</sub>                          | <sub>SIL 3</sub>                 | <sub>X</sub>                        | <sub>X</sub>                       | <sub>X</sub>                            |
| <sub>**5:**  ($10^{-2}$ - $10^{-1}$) </sub>   | <sub>SIL 1</sub>                          | <sub>SIL 2</sub>                 | <sub>SIL 3</sub>                    | <sub>X</sub>                       | <sub>X</sub>                            |
| <sub>**4:**  ($10^{-3}$ - $10^{-2}$) </sub>  | <sub>-</sub>                              | <sub>SIL 1</sub>                 | <sub>SIL 2</sub>                    | <sub>SIL 3</sub>                   | <sub>X</sub>                            |
| <sub>**3:**  ($10^{-4}$ - $10^{-3}$) </sub>  | <sub>-</sub>                              | <sub>-</sub>                     | <sub>SIL 1</sub>                    | <sub>SIL 2/3</sub>                 | <sub>SIL 3</sub>                        |
| <sub>**2:**  ($10^{-5}$ - $10^{-4}$) </sub>  | <sub>-</sub>                              | <sub>-</sub>                     | <sub>-</sub>                        | <sub>SIL 1/2</sub>                 | <sub>SIL 2</sub>                        |
| <sub>**1:**  ($10^{-6}$ - $10^{-5}$) </sub>  | <sub>-</sub>                              | <sub>-</sub>                     | <sub>-</sub>                        | <sub>SIL 1</sub>                   | <sub>SIL 1</sub>                        |

<sub>[Table Source: versatec](https://versatec.nl/wp-content/uploads/2018/12/SIL-Platform-Risk-Matrix-Guide-Oct2018-Final-LR-1.pdf)</sub>

### Common Measures



## Conclusion