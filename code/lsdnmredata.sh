#!/bin/bash
echo "Reading NMReDATA file to generated LSD file ..."
echo 'Running: java -cp "*" de.unikoeln.chemie.nmr.ui.cl.LSDConverter ' $1
java -cp "*" de.unikoeln.chemie.nmr.ui.cl.LSDConverter $1
echo "Calling Logic for Structure Determination (LSD)"
echo "Running : lsd " $1.lsd
./lsd $1.lsd
echo "Calling outlsd ..."
./outlsd 7 < $1.sol > $1.sol.sdf
echo "Process terminated ..."
echo "Result in " $1.sol.sdf
