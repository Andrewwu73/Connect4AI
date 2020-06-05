#!/bin/bash

COUNTER=0
while [  $COUNTER -lt 5 ]; do
    java MLGame 11 10 4 &
	(sleep 0.2 && java MLPlayerAlphaThree 1) &
	(sleep 0.2 && java MLPlayerAlphaBaseline 2)
	echo Finished run number $COUNTER
    let COUNTER=COUNTER+1 

    java MLGame 11 10 4 &
	(sleep 0.2 && java MLPlayerAlphaThree 2) &
	(sleep 0.2 && java MLPlayerAlphaBaseline 1)
	echo Finished run number $COUNTER
    let COUNTER=COUNTER+1 
done


