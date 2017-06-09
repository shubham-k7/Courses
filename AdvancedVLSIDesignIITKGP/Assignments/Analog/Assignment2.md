(1) Construct a diffamp with current-mirror load. Use W = 20u, L = 1u for
input pair, W=10u, L = 5u for the load pair, W = 20u and L =2u for the tail current source. Set the input DC level = 0.75V. Use Vdd = 1.8V. Bias the tail current source with the help of a reference
branch (diode connected NMOS with ideal current source of 20uA).
 
Apply a 1mV, 100Hz common mode signal and observe the magnitude at the output. Apply a 1mV signal at the VDD and observe the signal resulting at output.
Hence find PSRR. Now, change the W of one of the input transistors by 5% and again notice the single ended output for applied common mode input and 1mV supply noise.


(2) Construct a fully differential amplifier (with same transistors dimensions as above) and apply common mode feedback for max symmetric swing, with the help of current-mirror load diffamp.

Apply a 1mV, 100Hz common mode signal and observe the magnitude at the output. Apply a 1mV signal at the VDD and observe the signal resulting at differential output. Hence find PSRR. Now, change the W of one of the input transistors by 5% and again notice the differential output for applied common mode input and 1mV supply noise.

(3) Add common-source stages to the fully differential amplifier constructed in (2)
    to arrive at a 2-stage diffamp. Keep the W/L of the input device of the CS stage  same as PMOS load. Size the NMOS current source load transistors half the tail current source of differential pair.

(a) Use a single CMFB loop to establish final output common-mode voltage = 0.5Vdd. In this case, the tail current sources of diffamp and CS stages will be biased with same reference current source. 
 
(b) Now in the model file, increase the  |Vto| of PMOS by 25% and decrease
Vto of NMOS by 25%. Notice the change in DC bias point of 1st stage output.
Determine the reduction in input common mode range. Note, in this case power dissipation in the two stages may remain same.

