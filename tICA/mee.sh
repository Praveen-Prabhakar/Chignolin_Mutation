#!/bin/bash
for i in {2..27}
do
	sed -i "s/Frame1/Frame$i/g" Frame_$i/minimization.conf
	sed -i "s/Frame1/Frame$i/g" Frame_$i/production.conf
	sed -i "s/Frame1/Frame$i/g" Frame_$i/job.sh
done
