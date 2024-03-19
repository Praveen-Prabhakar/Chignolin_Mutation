#!/bin/bash

gmx_mpi cluster -cutoff 0.25 -f MtD.trr -s ../ionized.pdb -method gromos -o -g -dist -ev -sz -tr -ntr -clid -cl
