# LSDnmredata
Extension for LSD to use NMReDATA files

## Installation
Download the LSD distribution for your platform from http://eos.univ-reims.fr/LSD/index_ENG.html (see below for installation on MACOS)

Copy all the files from the code directory of this project into the LSD directory. This add a number of jar files (not be to be used directly) and an lsdnmredata.bat/sh file. The bat/sh files are scripts (bat for windows, sh for Linux/MacOs) which generate from an NMReDATA file the input for LSD and runs LSD with it. It expects an nmredata file as parameter. 

For example a file called my.nmredata.sdf you would run
## Usage
For windows:
```
lsdnmredata.bat my.nmredata.sdf 
```
For Linux/MACOS:
```
lsdnmredata.sh my.nmredata.sdf 
```
This will produce the files my.nmredata.sdf.lsd (the lsd input), my.nmredata.sdf.lsd.sol (the lsd solution file), and my.nmredata.sdf.lsd.sol.sdf, the solution(s) as an sdf file. 

The input file must contain a 1H, 13C, HMBC, HSQC, and COSY spectrum. 

You can also use the LSD input file in LSD manually and change the file to add more information. 

## Examples
The examples folder contains a number of examples, each with the original input file (x.nmredata.sdf) and the resulting files.

## Command lines for installation and run on MAC OSX
```
# install wget if not already installed
if ! [ -x "$(command -v wget)" ]; then
  echo 'Error: wget is not installed.' 
  brew install wget
  brew link wget
fi
wget https://github.com/NMReDATAInitiative/LSDnmredata/archive/master.zip
unzip master.zip
rm master.zip

# uncomment to download uncompiled LSD ... it still needs tobe compiled
#wget http://eos.univ-reims.fr/LSD/LSD-3.4.10.tar.gz
#gunzip LSD-3.4.10.tar.gz
#tar xfv LSD-3.4.10.tar
#rm LSD-3.4.10.tar

# install compiled LSD for mac OSX
wget http://eos.univ-reims.fr/LSD/iLSD-3.4.10.tar.gz
gunzip iLSD-3.4.10.tar.gz
tar xfv iLSD-3.4.10.tar
rm iLSD-3.4.10.tar
cp LSDnmredata-master/code/* iLSD-3.4.10/

cd iLSD-3.4.10

./lsdnmredata.sh ../LSDnmredata-master/examples/ethylcrotonate.nmredata.sdf
./lsdnmredata.sh "../LSDnmredata-master/examples/HAP_benzo(a)pyrene_assignments_1.nmredata.sdf"
```
