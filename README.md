# Behavioral Modeling 8-to-3 Priority Encoder

This repository contains a Verilog implementation of an 8-to-3 priority encoder using behavioral modeling. The priority encoder converts an 8-bit input (v) along with an enable signal (e_in) to a 3-bit output (y), a group select signal (gs), and an output enable signal (e_out).

## Functional Description

The 8-to-3 priority encoder behaves as follows:
- When the enable signal (e_in) is asserted (1), all outputs (y[2:0]) are set to 3'b111. The group select signal (gs) and the output enable signal (e_out) are both set to 1.
- When the enable signal (e_in) is deasserted (0), the encoder prioritizes the input values as follows:
  - If the input value (v) is 8'b11111111, the output (y[2:0]) is set to 3'b111. The group select signal (gs) is set to 1, and the output enable signal (e_out) is set to 0.
  - For all other input values, the outputs (y[2:0]) are set based on the priority order defined in the code, with the group select signal (gs) set to 0, and the output enable signal (e_out) set to 1.

## Usage

1. Open Vivado and create a blank project.
2. Create and add the Verilog module, named `Behavioral_Modeling_8_to_3_Priority_Encoder`, provided in this repository.
3. Add the appropriate board-related master XDC file to the project and edit it to include the related pins. Assign input `v` to SW7-SW0, `e_in` to SW15, `y` to LED2-LED0, `e_out` to LED7, and `gs` to LED6.
4. Synthesize and implement the design.
5. Generate the bitstream, download it into the Nexys4 DDR board, and verify the functionality.

## Additional Comments

Feel free to explore, modify, and use the provided Verilog module for educational or project purposes. If you encounter any issues or have suggestions for improvements, please let us know.

Happy coding!
