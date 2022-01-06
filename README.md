# README #

This README would normally document whatever steps are necessary to get your application up and running.

### What is this repository for? ###

* This repository contains scripts to set up and run the Docker Containers which launch BahiaRT's Setplays Learning from Demonstration Toolkit. The toolkit is a set of a fork of RoboViz 1.6.0 modified to support the Demonstration Model and a Fork of Strategy Planner (SPlanner) to support Demonstration Mode and new Behaviors and features.

### Requirements ###

* Install **git** and **docker** in a modern Linux distribution.
* Use of Docker Desktop in Windows 10 or + is also possible, but we haven't tested this setup.
* Check if your computer uses an NVIDIA Graphic Card and install updated NVIDIA Drivers. Make sure your OS is really using your NVIDIA drivers.
* Just update your graphic card drivers if you do not use an NVIDIA Graphic Card.

### Setting up the toolkit ###

* If you are using a Debian-based linux distribution, just run *setup.sh*:

>> ./setup.sh nvidia

or

>> ./setup.sh mesa


If you use NVIDIA choose the first option. Other wise use *mesa* as argument.


### Running the toolkit ###

* For systems using NVIDIA drivers:
>> ./run.sh nvidia
* For other systems:
>>./run.sh mesa