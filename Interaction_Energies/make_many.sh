#!/bin/bash
for i in {2..10}
do
	cp Wild_1.tcl Wild_$i.tcl
	sed -i "s/resid 1/resid $i/g" Wild_$i.tcl
	sed -i "s/Wild_1/Wild_$i/g" Wild_$i.tcl
done
