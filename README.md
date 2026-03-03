# ScalSync
## Agentic-EDA
Autonomous Hardware Design Orchestration for FPGA Workflows
Agentic-EDA is an AI-driven closed-loop hardware design system that integrates autonomous reasoning with traditional Electronic Design Automation (EDA) tools.
Instead of merely generating HDL code, this system:

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
Re-runs verification automatically
</p>

This transforms FPGA workflows from tool-driven iteration into intelligence-driven orchestration.


## Problem

Traditional FPGA workflows follow repetitive manual cycles:

<p align="center">
Write HDL<br>
↓<br>
Run synthesis<br>
↓<br>
Debug logs<br>
↓<br>
Fix<br>
↓<br>
Re-run
</p>

Engineers must repeatedly:

* Interpret verbose tool outputs
* Diagnose module mismatches
* Resolve simulation failures
* Manually re-trigger runs

This slows innovation and increases cognitive load.

## Solution

Agentic-EDA introduces a closed-loop workflow:
<p align="center">
Describe intent<br>
↓<br>
Autonomous HDL generation<br>
↓<br>
Vivado execution<br>
↓<br>
Log reasoning<br>
↓<br>
Self-correction<br>
↓<br>
Verification
</p>
The system embeds reasoning above deterministic EDA tools, converting static workflows into adaptive systems.

## System Architecture

<p align="center">
User Prompt<br>
↓<br>
AI Agent<br>
↓<br>
HDL + Testbench Generation<br>
↓<br>
File System Operations<br>
↓<br>
Vivado Automation (TCL + Shell)<br>
↓<br>
Simulation & Synthesis<br>
↓<br>
Log Analysis<br>
↓<br>
Error Diagnosis<br>
↓<br>
Auto-Fix & Re-run
</p>

## Features
* Autonomous Verilog generation
* Automatic testbench creation
* Vivado batch execution
* Self-healing error correction
* Simulation verification
* Waveform export support
* RTL schematic generation
* Closed-loop design orchestration
