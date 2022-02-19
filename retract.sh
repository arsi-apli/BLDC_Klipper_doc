#!/bin/sh
speed="30"
accel="150"
length="1"
while true
do
printf "MANUAL_STEPPER STEPPER=bldc  SET_POSITION=0 SPEED=${speed} MOVE=${length} ACCEL=${accel};\n MANUAL_STEPPER STEPPER=bldc  SET_POSITION=0 SPEED=${speed} MOVE=-${length} ACCEL=${accel};\n" >/tmp/printer2
printf "MANUAL_STEPPER STEPPER=bldc  SET_POSITION=0 SPEED=${speed} MOVE=${length} ACCEL=${accel};\n MANUAL_STEPPER STEPPER=bldc  SET_POSITION=0 SPEED=${speed} MOVE=-${length} ACCEL=${accel};\n"
sleep 0.5
done
