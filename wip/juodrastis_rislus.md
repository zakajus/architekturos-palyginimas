
# Architecture analysis of Motorola 68000 and Zilog Z8000 microprocessors

## Introduction

Following the adoption of 8-bit processors in the early 1970s, the years 1978-1985 sparked a race for 16-bit processor market dominance. While the Intel 80x86 family arguably won at the end, the Motorola 68000 and Zilog Z8000 series processors were nevertheless impactful and offered a number of interesting approaches in their design. This paper will focus on the first-generation of chips that were released by Motorola and Zilog in 1979 (specifically, the Z8000 and MC68000 models), analyzing their differences in architecture, as well comparing their relative market success.

## Physical characteristics

As their elementary base, both of these CPUs used large-scale integrated circuits, which were already available for commercial use by the 1970s (https://en.wikipedia.org/wiki/Integrated_circuit#Large-scale_integration_(LSI)). This means that they were small and light enough to be used in consumer electronics, such as personal computers. At the ambient temperature of 25°C, the 68000 was measured to draw 1.35 watts. Furthermore, it had a higher transistor count (68 versus 17.5 thousand on the Z8000), which resulted in higher power draw. (Wikipedia) Notably, updated models for both were later released in 1985 using CMOS in place of HMOS circuits, which subsequently had lower power usage. (Wikipedia)(https://www.cpushack.com/2010/10/15/zilog-the-first-decade-z80-z8-and-the-z8000/); .

## Registers and memory layout

Although both of them were register based architectures, their approaches differered greatly. The Z8000 featured sixteen 16-bit registers labeled RO through R15, with R15 being the only non-general purpose register, having been designated as the stack pointer. They stood out since all of them could be freely concatenated into eight 32 bit (RR0/RR2/.../RR14) or into four 64-bit (RQ0/RQ4/RQ/8/RQ12) registers. Furthermore, registers R0-R7 were subdivided into sixteen 8 bit registers (Wikipedia), reminiscent of Intel's 8086 (AX/BX/CX/DX) register layout released just a year earlier (Intel manual). There was also a dedicated 16-bit status register for carry, zero, sign, partity / overflow, decimal adjust, and half-carry flags.

On the other hand, the 68000 was comprised of eight 32-bit general purpose registers D0-D7, eight 32-bit adress registers A0-A7, and a 16-bit status register, supporting carry, overflow, zero, negative, and extend flags. Additionally, its status registry's "user" lower byte allowed for unprivilleged modification, while the upper "supervisor" byte did require privellege. Despite both of these CPUs having 16-bit data busses, Motorola coined the 68000 as a 16/32-bit processor due to its registry size. (user manuals)

Another important difference is in the memory map - the 68000 featured a 24-bit address bus and unsegmented memory, while the Z8000 opted for segmented memory and had a 23-bit wide address bus. Despite the Motorola and Zilog supporting up to 16MB and 8MB of memory respectively, in practice, systems came with far less memory. For example, the 68000-equipped Macintosh 128K (https://en.wikipedia.org/wiki/Macintosh_128K/512K_technical_details) or the Olivetti M20 featuring the Z8000 (https://en.wikipedia.org/wiki/Olivetti_M20) by default came with 128 kilobytes of memory. Another distinction between them was the fact the Motorola chip was big-endian, while the Zilog was little-endian (Wikipedias). However, these two CPUs did have in common the facts that they did not have support for virtual or cache memory, which were only introduced in later generation chips of their families, such as the 68010 or the Z8003 and Z8004 (manuals).

Both of them were classified as CISC (complex instruction set computers), since the Motorola had 

# Data types

The following basic data types were supported by both architectures: bits (addresable in bytes or words), digits (4 bytes/nibble), bytes, words (16 bits), long words (32 bits). In addition, the Z8000 also offered the quadruple word (64 bits), as well as made a distinction between segmented and unsegmented types - allowing to explicitly have unsegmented variables up to word length. (reference manuals). Neither of them natively supported floating-point numbers, however did allow for decimal representation using 4-bit BCDs (binary coded decimals). Notably, BCD arithmetic was implemented only in the 68000 and had to be manually written on the Z8000. Furthermore, it (manual) and the 68000 both represented integers using two's complement (http://wpage.unina.it/rcanonic/didattica/ce1/docs/68000.pdf). 

# Addressing modes

Despite that certain names slightly differed in the documentation published by each manufacturer, the two processors had a number addressing modes that were functionally equivalent: immediate, register direct, register indirect, relative address, and base address. The Motorola additionally offered a quick immediate mode (wikipedia) for values stored in opcode and the Zilog had an index mode (manual).


# Interrupts and I/O

