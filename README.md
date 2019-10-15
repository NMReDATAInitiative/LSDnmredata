# LSDnmredata
Extension for LSD to use NMReDATA files

## Installation
Download the LSD distribution for your platform from http://eos.univ-reims.fr/LSD/index_ENG.html (see below for installation on MACOS)

Copy all the files from the code directory of this project into the LSD directory. This add a number of jar files (not be to be used directly) and an lsdnmredata.bat/sh file. The bat/sh files are scripts (bat for windows, sh for Linux/MacOs) which generate from an NMReDATA file the input for LSD and runs LSD with it. It expects an nmredata file as parameter. 


## Usage
For windows, a file called my.nmredata.sdf would run with
```
lsdnmredata.bat my.nmredata.sdf 
```
For Linux/MACOS:
```
./lsdnmredata.sh my.nmredata.sdf 
```
This produces the lsdf input:  **my.nmredata.sdf.lsd**
Then lsd generates the list of possible structures in the solution file **my.nmredata.sdf.lsd.sol **and in the *Stucture Data Format* in: **my.nmredata.sdf.lsd.sol.sdf**.

The NMReDATA input file must contain data from 1H, 13C, HMBC, HSQC, and COSY spectra. 

You can edit the LSD input file to add/remove information. 

## Examples
The examples folder contains a number of examples, each with the original input file (x.nmredata.sdf) and the resulting files.
More can be found in the NMR records from https://github.com/NMReDATAInitiative/Examples-of-NMR-records

## Command lines for installation and run on MAC OSX
```
# install wget and gunzip if not already installed
if ! [ -x "$(command -v wget)" ]; then
  echo 'Warning: wget is not installed.' 
  brew install wget
  brew link wget
fi
if ! [ -x "$(command -v gunzip)" ]; then
  echo 'Warning: gunzip is not installed.' 
  brew install gunzip
  brew link gunzip
fi
wget https://github.com/NMReDATAInitiative/LSDnmredata/archive/master.zip
unzip master.zip
rm master.zip

# uncomment to download uncompiled LSD 
#wget http://eos.univ-reims.fr/LSD/LSD-3.4.10.tar.gz
#gunzip LSD-3.4.10.tar.gz
#tar xfv LSD-3.4.10.tar
#rm LSD-3.4.10.tar
#... it still needs to be compiled - follow the instructions in the installation.html file

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
