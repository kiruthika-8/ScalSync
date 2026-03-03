# **ScalSync**
# Building the next Antigravity for Electronic Design Automation(EDA) tools.
## Agentic-EDA
Autonomous Hardware Design Orchestration for FPGA/ASIC Workflows. This Agentic-EDA is an AI-driven closed-loop hardware design system that integrates autonomous reasoning with traditional Electronic Design Automation (EDA) tools. Instead of merely generating HDL code, this system:

<p align="center">
Generates Verilog from natural language intent<br>
↓<br>
Writes and edits design files<br>
↓<br>
Invokes Vivado synthesis and simulation<br>
↓<br>
Analyzes tool logs<br>
↓<br>
Diagnoses errors<br>
↓<br>
Applies corrective modifications<br>
↓<br>
Re-runs verification automatically<br>
</p>
This transforms FPGA workflows from tool-driven iteration into intelligence-driven orchestration.

## Problem
Modern chip design workflows are manual, iterative, and time-consuming, requiring engineers to repeatedly write HDL, run EDA tools, analyze logs, and debug errors, this reduces exploration of new designs. For this an AI-driven closed-loop hardware design system that autonomously generates, verifies, and optimizes digital circuits within existing EDA workflows.

Write HDL --> Run synthesis --> Debug logs --> Fix --> Re-run



## Tech Stack used to solve the problem
1) OpenClaw – A powerful Agentic AI framework to perform tasks and achieve goals.
2) AMD Xilinx Vivado – AMD Vivado Design Suite is a comprehensive Electronic Design Automation (EDA) software tool used for synthesis, analysis, and implementation of HDL designs, specifically tailored for Xilinx FPGAs and SoCs
3) Large Language Model – Acts as the brain for the agent to process the request and also reason to take action.
4) Verilog – Hardware Description Language used to design and describe a chip.

## Solution Architecture
This approach can boost the speed of designing the chips and improve productivity to make new design and get time to market it out.
<p align=center>
User Prompt<br>
   ↓<br>
OpenClaw Agent<br>
   ↓<br>
Generate Verilog + Testbench<br>
   ↓<br>
Run Vivado Automatically<br>
   ↓<br>
Simulate (xsim)<br>
   ↓<br>
Check PASS/FAIL --
               If  PASS - Return answer<br>
   ↓<br>
FAIL<br>
↓<br>
Reason the error & fix code automatically<br>
↓<br>
Re-run
</p>

## Demo Video
Checkout the Demo video of scalsync here 👉
https://drive.google.com/file/d/1sEAHTYJH3GrIRPxyT0JOI3oSLJJlNSTF/view?usp=drive_link

## Security & Prototype
As the OpenClaw framework has many security issues on using it locally on a machine, for security purpose and cost effectiveness the prototype is designed to connect with various environment like Ubunut(WSL), Windows, Gemini API etc to run the system perfectly, which is bit a complex stuff.

But if we’ve a standalone system to run OpenClaw or Virtual Private Server(VPS) running on the cloud, it would be very easy to connect OpenClaw and AMD Vivado to create an Agentic environment for Chip Designing and Verification.

## The Prototype Designed now
<p align = center>
User Prompt<br>
     ↓<br>
OpenClaw Agent (WSL)<br>
     ↓<br>
Filesystem Operations (Linux)<br>
     ↓<br>
Shell Execution (run_vivado.sh)<br>
     ↓<br>
cmd.exe bridge<br>
     ↓<br>
Vivado Batch Mode (Windows)<br>
     ↓<br>
Simulation / Synthesis<br>
     ↓<br>
Agent Analysis & Response Output
</p>

## Impact of the Solution

Traditional FPGA/ASIC workflows rely on repeated manual cycles, each iteration can take minutes to hours depending on design complexity. As designs grow more complex, this iterative burden slows development and limits rapid architectural exploration.
By embedding reasoning above deterministic EDA tools, it converts static workflows into adaptive, intelligence-driven systems.

**The impact is significant**

First, it reduces iteration time by automating repetitive debugging cycles. Engineers can focus on high-level architecture and optimization rather than syntax errors and tool diagnostics. Second, it lowers cognitive load by translating complex synthesis and simulation feedback into actionable corrections. Third, it democratizes hardware development by helping students and junior engineers navigate FPGA toolchains more effectively.

## Conclusion
Overall, this solution shifts FPGA/ASIC development from a tool-driven workflow to an intelligence-driven workflow, accelerating innovation and advancing AI-assisted electronic design automation.
