# Waveshare POE CM3 fan controller

## Description
Fan controller for the Waveshare POE board for the Rapsberry Pi Computer Modules 1/2/3(+)
Can be used as is or used as an example.


## Preparing your environment
```sh
sudo apt update
sudo apt install build-essential
wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.60.tar.gz
tar zxvf bcm2835-1.60.tar.gz 
cd bcm2835-1.60/
sudo ./configure
sudo make
sudo make check
sudo make install
# For more information of bcm2835 libraries：http://www.airspayce.com/mikem/bcm2835/
```

## Building the files
```sh
sudo gcc fan_on.c -o fan_on -l bcm2835
sudo gcc fan_off.c -o fan_off -l bcm2835
```

## Running the program (In background)
```sh
./fan_control.sh&
```
