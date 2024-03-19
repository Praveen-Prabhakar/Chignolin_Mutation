mol new 5awl_Wild.psf
mol addfile last5ns_Wild.dcd  waitfor all

set sel1 [atomselect top "segname PROA and not resid 1"]
set sel2 [atomselect top "resid 1"]

set execute /home/praveen/Documents/NAMD_2.14_Linux-x86_64-multicore/namd2

set prm1 par_all36m_prot.prm
#set prm2 toppar_water_ions.mod.str

set tempfile temp
set outfile Wild_1
package require namdenergy

namdenergy -sel $sel1 $sel2 -exe $execute -par $prm1 -elec -vdw -tempname ${tempfile} -ofile ${outfile}

exit

