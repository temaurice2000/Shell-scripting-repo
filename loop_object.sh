#!/bin/bash
echo "Detecting wireless issue"
echo processing..........
sleep 1
echo "Resolving the issue"
echo processing........

network=wireless

i=0

while [ $i -lt 100 ]

do

	i=$((i + 1))
echo "Solving network issue for "$network  $i"%"

sleep 0.1

done

echo processing......
sleep 5
echo processing......
sleep 5

echo "The wireless issue is resolved!!"
