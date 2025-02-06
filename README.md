# Dr_Quine

## Project Overview
This project includes the recreation of three distinct programs, each with unique characteristics. Each program is implemented in both C and Assembly, with respective source files organized into `C` and `ASM` directories. Each directory contains a `Makefile` with standard rules for compilation.

Completion of the C implementation is sufficient for project validation; however, working on the Assembly implementation is strongly recommended for future projects in this branch.

## Program Requirements

### Colleen
- The executable is named **Colleen**.
- When executed, the program prints its source code to the standard output.
- The source code must include:
  - A `main` function.
  - At least two distinct comments:
    - One comment within the `main` function.
    - One comment outside of the program.
  - An additional function besides `main`, which must be called within the program.

### Grace
- The executable is named **Grace**.
- When executed, the program writes its source code to a file named **Grace_kid.c** (for C) or **Grace_kid.s** (for Assembly).
- The source code must strictly adhere to the following constraints:
  - No explicitly declared `main` function.
  - Exactly three `#define` directives.
  - A single comment.
- The program runs by invoking a macro.

### Sully
- The executable is named **Sully**.
- When executed, the program creates a new source file named **Sully_X.c** (for C) or **Sully_X.s** (for Assembly), where `X` is an integer present in the source code.
- The newly created source file is compiled and executed automatically.
- Execution continues as long as `X` is greater than or equal to `0`.
- The integer `X` in the source code starts at `5` and decrements with each new execution cycle.

## Notes
- The project adheres to strict structural and naming conventions for consistency.
- The Assembly implementation, while optional for validation, is recommended to enhance understanding and skill development.
- The recursive nature of Sully introduces a unique challenge in both C and Assembly implementations.

