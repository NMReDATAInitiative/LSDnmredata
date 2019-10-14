# LSDnmredata
Extension for LSD to use NMReDATA files

## Usage
Download the LSD distribution for your platform from http://eos.univ-reims.fr/LSD/JmnSoft/. Put the files from the code directory of this project into the LSD directory. This add a number of jar files (not be used directly) and an lsdnmredata.bat/sh file. The bat/sh file is a script (bat for windows, sh for Linux/MAC) which converts an NMReDATA file into input for LSD and runs LSD with it. It expects an nmredata file as parameter. If you have got for example a file called my.nmredata.sdf you would run

lsdnmredata.bat my.nmredata.sdf

or

lsdnmredata.bat my.nmredata.sdf

depending on your operating system. This will produce the files my.nmredata.sdf.lsd (the lsd input), my.nmredata.sdf.lsd.sol (the lsd solution file), and my.nmredata.sdf.lsd.sol.sdf, the solution(s) as an sdf file. The input file must contain a 1H, 13C, HMBC, HSQC, and COSY spectrum. You can also use the LSD input file in LSD manually and change the file to add more information. 

## Examples

The examples folder contains a number of examples, each with the original input file (x.nmredata.sdf) and the resulting files.
