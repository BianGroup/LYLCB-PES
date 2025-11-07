# LYLCB PES Documentation

## Overview

This directory contains the **LYLCB (Li-Yang-Liu-Cao-Bian) Potential Energy Surface (PES)** fitted by **Bian's group** at the **Institute of Chemistry, Chinese Academy of Sciences, Beijing**.

*   **Last Modified**: January 2023

---

## Usage

### Coordinate Input Specification

*   **Atom Order**: Atoms in coordinates must be provided in this specific order:
    `H, H, H, H, O, O, O, O, C, C`
*   **Coordinate Arrangement**: Please loop through `x, y, z` components inside loops of atoms.
*   **Units**:
    *   Coordinates: Ångstrom (Å)
    *   Energy: kcal/mol

### Core Subroutine

The core subroutine is `pot(c, E)`:

*   **Input**: `c` - A 30-element array (or matrix) containing atomic coordinates.
*   **Output**: `E` - The computed potential energy.

### Sample Program

A sample main program that calls this PES is provided in `src/main.f90`. This program has been successfully tested with **ifort 15** and **19**.

---

## Compilation Guide

1.  Navigate to the `src` directory.
2.  Run the `make` command.
3.  The compilation output is an executable named `a.out`.

### Testing

1.  `test.xyz` is a sample coordinate file for testing.
2.  Run `./a.out <../test.xyz`.
3.  Compare the output with `../test.out` to verify proper functionality.

### Important Notes

*   After successful compilation, the executable `a.out` can be moved to any location, but the `nndata` directory **must** be placed in the **same directory** as the executable.
*   To recompile, edit the `Makefile` for your specific environment and codes, then run `make clean && make`.
