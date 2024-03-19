#!/bin/bash
for i in {2..10}
do
	cp Res_1.tcl Res_$i.tcl
	sed -i "s/resid 1/resid $i/g" Res_$i.tcl
	sed -i "s/Res_1/Res_$i/g" Res_$i.tcl
	sed -i "s/5awl_1.psf/5awl_$i.psf/g" Res_$i.tcl
	sed -i "s/last5ns_1.dcd/last5ns_$i.dcd/g" Res_$i.tcl
done
