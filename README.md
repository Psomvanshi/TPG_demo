# TPG_demo

A quick and easy-to-follow demonstration of Vivado Test Pattern Generator (TPG) IP and surrounding architecture targeted on Zedboard. The block design primarily consists of the following IPs :
- ZYNQ Processing System
- Processor System Reset
- Clocking Wizard : To accurately attain an otherwise unachievable frequency of 148.5 Mz correspoding to pixel clock frequency of 1280p.
- Vivado Test Pattern Generator
- AXI Interconnect
- AXI4-Stream to Video Out : Converts AXI4-Stream output(generated from TPG) to Video format that can be displayed by external generic VGA device.
- Video Timing COntroller : Generates timing signals for video output based on resolution.

The default pattern generated and displayed on VGA monitor is "Colour Bars". However, this can easily be modified in "main.c" file.
