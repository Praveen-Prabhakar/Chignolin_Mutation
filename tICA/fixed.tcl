mol new ionized.pdb
set all [atomselect top "all"]
set var [atomselect top "protein"]
$var set beta 1.0

$all writepdb ionized_pfixed.pdb
