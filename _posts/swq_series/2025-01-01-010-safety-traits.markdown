---
layout: post
read_time: true
show_date: true
title:  Safety Traits
date:   2024-12-22 08:32:20 0000
description: ISO/IEC 25010 Safety Traits
img: posts/common/QUALITY_SAFETY.png 
tags: [Software Quality Series]
author: Bastian Hamacher
github:  bhamacher92
mathjax: yes
---

*This article is part of the Software Quality series. If you haven’t read the introductory article,
you can check it out [here]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %}).*

**ISO/IEC 25010** defines safety, one of the nine software quality traits, as 
the degree to which a product under defined conditions avoids a state in which human life, health, property, or the environment is endangered.
It further breaks down safety into five sub-traits: 

### Operational Constraint
Degree to which a product or system constrains its operation to within safe parameters or states when encountering operational hazard.

A system might be able to function within certain parameters, but those parameters may not always ensure safety. The system should prevent operators and itself from exposing people, property, or the environment to unacceptable risks, adapting its operations accordingly.  

### Risk Identification
Degree to which a product can identify a course of events or operations that can expose life, property or environment to unacceptable risk. 

While a system may detect potential risks, it may not intervene or take corrective action. For example, a fitness tracker monitors heart rate, identifies unusual spikes, and logs this data for later analysis without taking any immediate corrective steps.  

### Fail-Safe
Degree to which a product can automatically place itself in a safe operating mode, or to revert to a safe condition in the event of a failure.

The system should include features to detect hazards arising from its own operations and autonomously transition to a safe state. For instance, an autonomous car can safely slow down or return control to the driver if critical sensors malfunction.  

### Hazard Warning
Degree to which a product or system provides warnings of unacceptable risks to operations or internal controls so that they can react in sufficient time to sustain safe operations.

A simple example from ISO/IEC 25010 is a pedestrian traffic light that displays the remaining seconds before the light changes from green to yellow or red, giving users time to react.  

### Safe Integration
Degree to which a product can maintain safety during and after integration with one or more components. 

A subsystem cannot be considered in isolation. A subsystem that is safe by itself may compromise safety when combined with other systems. For example, consider two subsystems that independently meet a safety threshold 90% of the time. When integrated using a pipes-and-filters pattern, the combined system might operate safely only 81% of the time, as the overall safety probability becomes the product of the two. Worst-case scenarios assume that failures are independent and not simultaneous, highlighting the importance of thorough integration analysis.  

## How to Improve Safety
Safety is a multifaceted domain. Hazards are context-dependent, varying with the system and its environment. While **ISO/IEC 25010** offers a slightly different definition, this discussion defines safety as maintaining an acceptable level of risk, where risk is the product of probability and severity.  

**[IEC 61508](https://ieeexplore.ieee.org/document/4493673)** provides standards for the "functional safety of electrical/electronic/programmable electronic safety-related systems." Particularly relevant are Part 1, which outlines classification, Part 3 and Part 7, which describes software-related measures. While IEC 61508 focuses on systems that can physically endanger people (e.g., real-time systems), its principles also apply to non-real-time systems like chatbots, which might pose risks through misleading advice.  

*Note: Industries such as automotive and healthcare have specialized norms. Despite differences, the foundational concepts and methodologies remain consistent.*  

Safety, like security, is a domain requiring specialized expertise. Designing safe systems without adequate knowledge or collaboration with experts risks failure. However, the following guidelines provide an introduction to identifying safety needs and measures from IEC 61508 

### Identifying Safety Requirements (IEC 61508-1)
- **Hazard Identification**  
   After describing the system, identify potential hazards, categorizing them by severity and likelihood. Hazard analysis determines critical system paths, i.e., components that could trigger hazardous failures. Tools like [Failure Modes and Effects Analysis (FMEA)](https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis) help pinpoint risks and necessary mitigations.  

<sub>*Example severity categories [(versatec)](https://versatec.nl/wp-content/uploads/2018/12/SIL-Platform-Risk-Matrix-Guide-Oct2018-Final-LR-1.pdf):*</sub>  

| <sub>**1** <br> Negligible</sub> | <sub>**2** <br> Minor<sub> | <sub>**3** <br> Moderate</sub> | <sub>**4** <br> Major </sub>| <sub> **5** <br> Catastrophic </sub> |
|:---------------------------------:|:--------------------------------:|:----------------------------------:|:----------------------------------:|:-------------------------------------:|
| <sub align="left"> Minor injury, medical treatment case with/or restricted work case </sub> | <sub align="left">Serious injury or lost work case</sub> | <sub align="left">Major or multiple injuries, reversible injury, or non-disabling permanent injury</sub> | <sub align="left">Single fatality or permanent disability</sub> | <sub align="left">Multiple fatalities, up to 10 fatalities</sub> |  

- **Defining Safety Requirements**  
   Based on identified risks, establish requirements to reduce them to acceptable levels. The table below relates risk levels to [Safety Integrity Levels (SIL)](https://en.wikipedia.org/wiki/Safety_integrity_level), which define the required risk reduction factor and drive required measures.  

<sub>*Risk-to-SIL Mapping Example [(versatec)](https://versatec.nl/wp-content/uploads/2018/12/SIL-Platform-Risk-Matrix-Guide-Oct2018-Final-LR-1.pdf):*</sub>  

| <sub>**Likelihood**</sub>        | <sub>**1 <br> Negligible**</sub>          |<sub> **2 <br> Minor**  </sub>    | <sub>**3 <br> Moderate**  </sub>    | <sub> **4 <br> Major**  </sub>     | <sub> **5 <br> Catastrophic** </sub>    |
|----------------------------------|:-----------------------------------------:|:--------------------------------:|:-----------------------------------:|:----------------------------------:|:---------------------------------------:|
| <sub>**7:**  > 1</sub>             | <sub>SIL 3</sub>                          | <sub>X</sub>                     | <sub>X</sub>                        | <sub>X</sub>                       | <sub>X</sub>                            |
| <sub>**6:**  ($10^{-1}$ - 1)</sub>   | <sub>SIL 2</sub>                          | <sub>SIL 3</sub>                 | <sub>X</sub>                        | <sub>X</sub>                       | <sub>X</sub>                            |
| <sub>**5:**  ($10^{-2}$ - $10^{-1}$ ) </sub>   | <sub>SIL 1</sub>                          | <sub>SIL 2</sub>                 | <sub>SIL 3</sub>                    | <sub>X</sub>                       | <sub>X</sub>                            |
| <sub>**4:**  ($10^{-3}$ - $10^{-2}$ ) </sub>  | <sub>-</sub>                              | <sub>SIL 1</sub>                 | <sub>SIL 2</sub>                    | <sub>SIL 3</sub>                   | <sub>X</sub>                            |
| <sub>**3:**  ($10^{-4}$ - $10^{-3}$ ) </sub>  | <sub>-</sub>                              | <sub>-</sub>                     | <sub>SIL 1</sub>                    | <sub>SIL 2/3</sub>                 | <sub>SIL 3</sub>                        |
| <sub>**2:**  ($10^{-5}$ - $10^{-4}$ ) </sub>  | <sub>-</sub>                              | <sub>-</sub>                     | <sub>-</sub>                        | <sub>SIL 1/2</sub>                 | <sub>SIL 2</sub>                        |
| <sub>**1:**  ($10^{-6}$ - $10^{-5}$ ) </sub>  | <sub>-</sub>                              | <sub>-</sub>                     | <sub>-</sub>                        | <sub>SIL 1</sub>                   | <sub>SIL 1</sub>                        |


### Common Safety Measures (IEC 61508-3 and IEC 61508-7)
**IEC 61508-3** and **IEC 61508-7** outline measures for software safety at various SIL levels:  

1. **Select the Right Technology**  
   Use appropriate programming languages and compilers. For example, static, strongly-typed languages like certified subsets of C++ or Rust combined with a certified compiler (e.g., [Ferrocene](https://ferrocene.dev)) reduce complexity and ensure compliance.  

2. **Limit Resource Usage**  
   Restrict access to shared resources in multi-threaded or multi-node environments. Techniques like memory pools prevent memory leaks from impacting other processes.  

3. **Implement Error Detection**  
   Use methods like [N-Version Programming](https://en.wikipedia.org/wiki/N-version_programming) or [Watchdog Timers](https://en.wikipedia.org/wiki/Watchdog_timer) to detect and mitigate errors.  

4. **Maintain System Stability**  
   Once errors are detected, transition the system into a stable state. Examples include restarting a faulty process or applying recovery mechanisms like [Recovery Blocks](https://en.wikipedia.org/wiki/Exception_handling).  


## Conclusion
Achieving software safety requires deliberate planning, adherence to standards like ISO/IEC 25010 and IEC 61508, and the expertise of domain professionals. Safety is about reducing risk to acceptable levels through comprehensive hazard analysis, well-defined requirements, and tailored measures.  

Building safe systems demands collaboration with experts to ensure compliance and address specific challenges. With robust design practices, we can develop reliable, resilient, and trustworthy software systems.

### Where to go from here

This concludes the current iteration of the Software Quality series. The upcoming Application Architecture series will explore different architectural styles, highlight effective patterns, and provide guidance on making informed decisions tailored to the specific quality needs of your application.

- [Software Quality Series]({% post_url swq_series/2025-01-01-001-what-defines-software-quality %})
- Application Architecture Series (coming soon)

**[<- Pervious article in this series]({% post_url swq_series/2025-01-01-009-security-traits %})**