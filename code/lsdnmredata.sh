#!/bin/bash
echo Converting NMReDATA file to LSD file...
java -cp "*" de.unikoeln.chemie.nmr.ui.cl.LSDConverter $1
./lsd $1.lsd
./outlsd 7 < $1.sol > $1.sol.sdf
echo Result written to $1.sol.sdf
