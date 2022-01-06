# README #

### What is this repository for? ###

* This repository contains scripts to set up and run the *Docker Containers* which launch **BahiaRT's Setplays Learning from Demonstration Toolkit**. The toolkit is a set of a fork of RoboViz 1.6.0 modified to support the Demonstration Mode and a Fork of Strategy Planner (SPlanner) to support Demonstration Mode and new behaviors and features.

### Requirements ###

* Install **git** and **docker** in a modern Linux distribution.
* Use of Docker Desktop in Windows 10 or + is also possible, but we haven't tested this setup. If you want to try using the toolkit in Windows, install and set up Docker Desktop, WSL2, and an X Server for Windows. 
* Check if your computer uses an NVIDIA Graphic Card and install updated NVIDIA Drivers. Make sure your OS is really using your NVIDIA drivers.
* Just update your graphic card drivers if you do not use an NVIDIA Graphic Card.

### Installing Docker in a Debian-based Linux distribution ###

>> $ sudo apt-get update
>>
>> $ sudo apt-get install -y docker.io
>>
>> $ sudo gpasswd -a *{user-name}* docker

**Replace *{user-name}* by your user name in the Linux system.**

### Setting up the toolkit ###

* If you are using a Debian-based linux distribution, just run *setup.sh*:

>> ./setup.sh nvidia

or

>> ./setup.sh mesa


If you use NVIDIA choose the first option. Otherwise use *mesa* as the argument.

* If you are trying in a Windows 10 or + without an NVIDIA Graphics card, run *setup.cmd* in the Windows Powershell:

>> setup.cmd


### Running the toolkit ###

* For systems using NVIDIA drivers:
>> ./run.sh nvidia
* For other systems:
>>./run.sh mesa
* For Windows systems without NVIDIA Graphics Cards, run in the Powershell:
>> run.cmd