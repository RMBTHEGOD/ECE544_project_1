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
output reg [15:0]gpio_high_time;  // sends the high time to the board using the gpio pins
output reg [15:0]gpio_low_time;  //  sends the low time to the board using the gpio pins
reg [15:0]high_timer=0;         //calculates the high time
reg [15:0]low_timer=0;         // calculates the low time
input  gpio;                  //level of the PWM signal
reg prev_gpio=0;             // holds the previous value(level)that had come from the gpio pin of the corresponding colour
input clock;                 // system clock
always@(posedge clock)begin
if((gpio==1)&&(prev_gpio==0)) //checks for 0 to 1 transiton of PWM signal
    high_timer=high_timer+1;
else if((gpio==0)&&(high_timer>0)) // 1 to 0 transition after 0 to 1 transition
    prev_gpio=1;
else if((gpio==0)&&(high_timer==0)) begin  // This is for an always low level PWM signal
 gpio_high_time=0;
 gpio_low_time=0;
 end
if((gpio==0)&&(prev_gpio==1))   //checks for 1 to 0 transition of PWM signal
    low_timer=low_timer+1;
else if((gpio==1)&&(low_timer>0))begin  //0 to 1 transition after  1 to 0 transition
gpio_high_time=high_timer;
gpio_low_time=low_timer;
high_timer=0;
low_timer=0;
prev_gpio=0;
end
end
endmodule