# ECE544_project_1
Involves nexy4ddr board, PWM and PWDetection.
This project is about generating rgb colours using PWM and detecting the same using PWDetection.
The project was done on nexy4 ddr fgpa, using pmodENC and pmodOLEDrgb.
Used the concept of hue saturation and value to build the rgb colours.
Used xilinx vivado HLx(for generating the hardware system) and xilinx vivado SDK(application program on the system).
The hardware system flashed on the nexy4 ddr is microblaze.
The hue's value was generated using the pmodENC. Turn the pmodENC clockwise, increased its value and turning it anticlockwise direction, 
decreased its value.
The saturation's value was generated using the btR(increases its value) and btL(decreases its value) button on nexy4 ddr. 
The value was generated using btU(increases) and btD(decreases) button on nexy4 ddr.
The system clock frequency is 100Mhz, the PWM frequency is 4khz.
Used FIT(fixed interval timer) to generate an interupt after fixed amount of time. This is used to read the values(rgb) generated from 
pwm from the gpio pins. This values are used for software detection.
A system verilog code was written for hardware pw detection. In hardware pw detection, we will be reading the rgb value generated directly 
and generated the corresponding high and low time for each colour. We will be sending this colour to the application program, through the 
gpio pins. Using this high time and low time, we will be doing the pw detection. This is the hardware pw detection. 
