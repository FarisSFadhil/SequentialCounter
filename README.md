The counter module is a four-bit up-down counter. It has a CLK input, a UD input which is a line that determines if the counter will count up or down. 
It has an output that is a register of four bits which is the Count, and lastly, it has a Clear input to reset the Count to zero. 
Line 12, there is an always block that works whenever the Clear line changes, and if the Clear line is zero, then the Count goes back to zero. 
In line 16, another always block that works on the positive edge of the CLK line, and its code is a case statement that pays attention to the concatenation of the UD and the 
Clear lines so that when the UD line is zero, the counter will count down, and when the UD line is one, the counter will count up.

The test bench, line six, instantiate the Counter. The instance is called C1, and there are several things in this particular test bench module. 
First, in line eight, an initial block that assigns zero to the CLK line because in line nine, an always block that waits for five nanoseconds to invert the value of the CLK line. 
This is to generate a CLK signal in the CLK line that waits for five nanoseconds and then toggles the value of CLK over and over again until the simulation stops. 
Next, in line 11, it is the initial block with the actual simulation. So first, set the Clear line to zero and the UD line to one so that when the Clear line is released in line 14, 
the counter will count up. 72 nanoseconds later, the Clear line goes low again so that the count is reset to zero. 
Five nanoseconds later, the counter will resume counting up from zero, and lastly, 25 nanoseconds later, the UD line goes low, so the counter will start counting down from where it left off. 
Now in line 20, there is another initial block and a console command called monitor. This one works just like the printf function in C. 
So we can see a format-specifying string that says UD equals some value, then CLR equals some value, then COUNT equals some value. 
Those values are exactly, UD, Clear, and Count. This function is working in the console window later.
Lastly, the simulation finishes 150 nanoseconds after it all started. 
Note: All of the initial and always blocks work concurrently.
