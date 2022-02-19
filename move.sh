#!/bin/sh
speed="15"
accel="100"
length="2.4"
printf "MANUAL_STEPPER STEPPER=bldc  SET_POSITION=0 SPEED=${speed} MOVE=${length} ACCEL=${accel};\n" >/tmp/printer2
printf "MANUAL_STEPPER STEPPER=bldc  SET_POSITION=0 SPEED=${speed} MOVE=-${length} ACCEL=${accel};\n"
