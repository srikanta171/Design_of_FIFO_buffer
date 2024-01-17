# Designing a FIFO Buffer

## Introduction

A FIFO (First-In, First-Out) buffer is an essential component in digital systems that ensures orderly data storage and retrieval. Unlike RAM, where data can be accessed randomly, a FIFO enforces a sequential data handling approach, where the first data written is the first to be read. This document will explore the two main types of FIFO buffers, Asynchronous and Synchronous, and provide insights into their depth calculation.

## What is a FIFO Buffer?

A FIFO buffer, as the name suggests, follows the "first in, first out" principle. It operates as a sequential data storage system and is often employed in digital communication and data transfer applications. Unlike RAM, data written into a FIFO buffer can only be read in the order it was written, making it an excellent choice for maintaining data integrity.

## Types of FIFO Buffers

FIFO buffers come in two primary flavors: Asynchronous and Synchronous.

### Asynchronous FIFO

- **Clock Separation:** Asynchronous FIFOs employ separate clocks for read and write operations. This design is particularly useful when two devices communicate with different operating frequencies.

- **Frequency Mismatch Example:** Consider a scenario where a microprocessor operates at 200 MHz, while a peripheral device runs at 100 MHz. The mismatch of 200 - 100 = 100 MHz means that without a proper buffer, data loss would occur during communication.

- **Depth Calculation:** To mitigate data loss, you'll need a FIFO depth of 100. This depth allows the buffer to accommodate the frequency difference and ensures the integrity of the data. Less depth is not practical, and higher depths may be useful but can become uneconomical.

- **Burst Data:** It's crucial to understand that data transfer in asynchronous FIFOs is often in bursts. Instead of continuous streams, data is transferred in packets or blocks, which have defined start and stop points.

### Synchronous FIFO

- **Single Clock:** Synchronous FIFOs, in contrast, use a single clock signal for both read and write operations. They are suitable for applications where devices operate at the same clock frequency or have synchronized clock domains.

## Depth Calculation

To determine the required depth of a FIFO buffer, follow these steps:

1. Identify the difference in operating frequencies between the devices (e.g., microprocessor and peripheral).

2. The depth of the FIFO should be at least equal to this frequency difference to prevent data loss.

For example, if a microprocessor operates at 200 MHz, and a peripheral device operates at 100 MHz, a FIFO depth of 100 is necessary to bridge the gap and maintain data integrity.

## Conclusion

In conclusion, FIFO buffers are indispensable for ensuring smooth and orderly data communication between devices with different clock frequencies. The choice between asynchronous and synchronous FIFOs depends on your specific application needs and clock domain considerations.

Remember that proper depth calculation is critical to preventing data loss during transmission. Design your FIFO buffer to match the frequency mismatch and enjoy efficient, reliable data communication.

For a deeper understanding and practical implementation, refer to the documentation and resources provided with your hardware or software platform.


---

#  ASIC Design Flow: Implementation of this Project from RTL to GDS II

## Content Overview
- **RTL Design**
- **RTL Simulation**
- **Logic Synthesis**
- **Physical Design**
  - **Design Import**
  - **Floorplan (includes Powerplan)**
  - **Placement & Place Opt**
  - **Clock Tree Synthesis & CTS Opt**
  - **Routing & Route Opt**


---

## Let's get started

- **RTL Design**: Learn how we converted the project specifications into RTL code using Verilog/VHDL.
  - For details understanding of the design [follow this](https://www.fpga4student.com/2017/01/verilog-code-for-fifo-memory.html).
- **RTL Simulation**: Understand how we simulated the RTL code to verify the design functionality.
  - ![image](https://github.com/srikanta171/Design_of_FIFO_buffer/blob/main/rtl1/Screenshot%20from%202023-12-19%2011-35-51.png)

- **Logic Synthesis**: Discover how we synthesized the RTL code into a gate-level netlist.
---
The commands I have provided [here](synthesis/scirpt_synthesis.tcl) are used for the synthesis of a hardware design. The commands are a sequence of commands that are executed in a tool Genus. The commands are used to synthesize the RTL design, into a gate-level netlist. The netlist is then used for further stages of the design flow such as place and route, timing analysis, power analysis, etc.



## ASIC Physical Design Flow:


### Let's get started

- **Design Import**: This is the initial phase where the design data is imported into the physical design tools.
When importing a design into Cadence Innovus, the following files are required:

1. Design Netlist File (Verilog): This file is created after the synthesis process and can either be generated using CADENCE Genus. Generally, it is a Modified Netlist, because I have to instantiate IOpad cells to the input and output port. Here is the [modified netlist](synthesis/fifo_netlist.v), from [this line](https://github.com/srikanta171/Design_of_FIFO_buffer/blob/da79ddadd00581af18d6dfca4b3f39bc342a1c9e/synthesis/fifo_netlist.v#L899) modification is required.
2. Physical Library Files (LEF Files): There are three kinds of LEF files required which are:
    * Technology LEF File: This file contains information about the Metal layers, Vias, design rules, etc. for a certain technology.
    * Standard Cell LEF File: This file contains the physical view of the standard cells of the current technology.
    * IO Cell LEF File: This file contains the physical view of the IO cells, corner cells, IO fillers of the current technology.

3. View Definition File: This file is actually called Multi Mode Multi Corner (MMMC) view definition file. This file takes timing library files(.lib files), Capacitance Tables, and SDC files generated during the synthesis stage ([this file](synthesis/fifo_sdc.sdc)) as inputs. Then creates Best and Worst case rc_corners for PVT analysis of the chip. Also, creates Max and Min libraries for timing and delay.

4. IO Assignment File: [This file](physical_design/fifo_iopad.io) is used for assigning the IO pins in a specific order. If this file is not used then the tool will automatically assign the input output ports in a convenient order. This file also places the IO pads and Corner cells.

- **Floorplan (includes Powerplan)**: In this step, the layout of the chip is planned, including the placement of blocks and the power distribution network. Check [my logs](physical_design/innovus.log5) or check [this cmd](https://github.com/srikanta171/Design_of_FIFO_buffer/blob/da863f4761c694e6b617bbd12c1ab5b44c729518/physical_design/innovus.cmd5#L33) to execute the floorplan.
- **Placement & Place Opt**: After floorplanning, the components of the design are placed onto the layout, and their positions are optimized for performance and other factors. Check [my logs](physical_design/innovus.log5) or check [this cmd](https://github.com/srikanta171/Design_of_FIFO_buffer/blob/da863f4761c694e6b617bbd12c1ab5b44c729518/physical_design/innovus.cmd5#L56)
- **Clock Tree Synthesis & CTS Opt**: This involves building a clock distribution network (clock tree) across the chip and optimizing it to ensure that all elements receive the clock signal on time. 
- **Routing & Route Opt**: The final step involves connecting the components with wires (routing) and optimizing the wire paths to minimize delays and other issues. Check [my logs](physical_design/innovus.log5) or check [this cmd](https://github.com/srikanta171/Design_of_FIFO_buffer/blob/da863f4761c694e6b617bbd12c1ab5b44c729518/physical_design/innovus.cmd5#L283)


Final Result of the Flow:

![image](https://github.com/srikanta171/Design_of_FIFO_buffer/blob/main/physical_design/Screenshot%20from%202023-12-20%2013-11-29.png)

---


---
