//////////////////////////////////////////////////////////////
// pwm_detection.sv - performs pulse width detection.
//
// Author: 	Rithvik Mitresh Ballal (rithvik@pdx.edu)
// Date: 01/24/2018
//
// Description:
// ------------
// This module performs pulse width detection using system clock. The procedure, is basically
// calculate the high time from 0  to 1 transistion and low time from 1 to 0 transistion. The input(gpio) gives the level 
// of PWM signal
////////////////////////////////////////////////////////////////

module pwm_detection(gpio_high_time,
gpio_low_time,gpio,clock);
output reg [31:0]gpio_high_time;  // sends the high time to the board using the gpio pins
output reg [31:0]gpio_low_time;  //  sends the low time to the board using the gpio pins
reg [31:0]high_timer=0;         //calculates the high time
reg [31:0]low_timer=0;         // calculates the low time
input  gpio;                  //level of the PWM signal
reg prev_gpio=0;
input clock;                 // system clock
always_ff@(posedge clock)begin
if(gpio==1&&prev_gpio==0)begin
high_timer<=high_timer+1;
end
else if(high_timer>0&&prev_gpio==0) begin
prev_gpio<=1;
end
else if(gpio==0&&prev_gpio==1)
low_timer<=low_timer+1;
else begin
gpio_high_time<=high_timer;
gpio_low_time<=low_timer;
low_timer<=0;
high_timer<=0;
prev_gpio<=0;
end
end
endmodule