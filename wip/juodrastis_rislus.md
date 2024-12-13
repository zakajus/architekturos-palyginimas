# Introduction

Following widespread adoption of 8-bit processors in the early 1970s, the years 1978-1985 witnessed a race for 16-bit CPU market dominance, with the Z8000 and  68000 being the flagship designs released by Zilog and Motorola respectively by the year 1979 (Kranenborg). This paper analyzes the architectural differences between these two microprocessors, including design philosophies, layouts, instruction models, applications, and other factors, which resulted in 68000 finding higher relative success in the market than the Z8000.

As their elementary base, both of these CPUs used large-scale integrated circuits, which were already available for commercial use by the mid 1970s (https://en.wikipedia.org/wiki/Integrated_circuit#Large-scale_integration_(LSI)). This means that they were small and light enough to be used in consumer electronics, such as personal computers. At the ambient temperature of 25°C, the 68000 was measured to draw 1.35 watts. Furthermore, it had a higher transistor count (68 versus 17.5 thousand on the Z8000), which resulted in higher power draw. (Wikipedia) Notably, updated models for both were later released in 1985 using CMOS in place of HMOS circuits, which subsequently had lower power usage. (Wikipedia)(https://www.cpushack.com/2010/10/15/zilog-the-first-decade-z80-z8-and-the-z8000/); .

Although both of them were register based architectures, their approaches differered greatly. The Z8000 featured sixteen 16-bit registers labeled RO through R15, with R15 being the only non-general purpose register, having been designated as the stack pointer. They stood out since all of them could be freely concatenated into eight 32 bit (RR0/RR2/.../RR14) or into four 64-bit (RQ0/RQ4/RQ/8/RQ12) registers. Furthermore, registers R0-R7 were subdivided into sixteen 8 bit registers (Wikipedia), reminiscent of Intel's 8086 (AX/BX/CX/DX) register layout released just a year earlier (Intel manual). There was also a dedicated 16-bit status register for carry, zero, sign, partity / overflow, decimal adjust, and half-carry flags. 

On the other hand, the 68000


