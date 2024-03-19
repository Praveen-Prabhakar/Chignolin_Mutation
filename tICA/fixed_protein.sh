#!/bin/bash
for i in {2..27}
do
	vmd -e Frame_$i/fixed.tcl
done
