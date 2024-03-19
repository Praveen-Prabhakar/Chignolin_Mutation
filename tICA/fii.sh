#!/bin/bash
for i in {2..27}
do
	cp Frame_1/production.conf Frame_$i
	cp Frame_1/minimization.conf Frame_$i
	cp toppar_water_ions_namd.str Frame_$i
	cp par_all36m_prot.prm Frame_$i
	cp Frame_1/job.sh Frame_$i
done
