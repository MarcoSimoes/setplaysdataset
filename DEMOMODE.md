# BahiaRT's Setplays Learning from Demonstration Toolkit

Here we describe most of the usage of the toolkit to crate demonstrations of setplays to a team of simulated humanoid robots. 

1. [Opening games logs](#markdown-header-opening-games-logs)
2. [Starting a new demonstration](#markdown-header-starting-a-new-demonstration)

[RVizOpenFile]: /images/DemoMode-RViz1.png "Open a Game"
[RVizGamesFolder]: /images/DemoMode-RViz2.png "Games Folder"
[RVizGameLog]: /images/DemoMode-RViz3.png "Choosing a game log" 
[RVizNewDemo]: /images/DemoMode-RViz4.png "Setting up a new demonstration"
[RVizNewOff]: /images/DemoMode-RViz5.png "New Offensive Demonstration"
[RVizSelTeam]: /images/DemoMode-RViz6.png "Selecting Teammates"
[RVizTeamSel]: /images/DemoMode-RViz7.png "Teammates selected"
[RVizOppSel]: /images/DemoMode-RViz8.png "Opponents selected"
[RVizStartNew]: /images/DemoMode-RViz9.png "Starting a new demonstration"
[RVizPlayBack]: /images/DemoMode-RViz10.png "Playing Backwards"
[RVizPlayersMIRG]: /images/DemoMode-RViz11.png "Choosing players from other teams"

[SPNewOffSP]: /images/DemoMode-SPlanner1.png "Creating a new Offensive Setplay"
[SPOffMarkerMenu]: /images/DemoMode-SPlanner2.png "Behaviors for non-Ball Owners Players: Offensive Marker"
[SPOffMarkerSeta]: /images/DemoMode-SPlanner3.png "Arrow pointing to target of Offensive Marker"
[SPOoffMarkerOptions]: /images/DemoMode-SPlanner4.png "Options for Offensive Marker"
[SPBehNonBO]: /images/DemoMode-SPlanner5.png "Other Behaviors for non-Ball Owners Players"
[SPBehBO]: /images/DemoMode-SPlanner6.png "Behaviors for the Ball Owner Player"
[SPGraphName]: /images/DemoMode-SPlanner7.png "Setplay Graph and Name"
[SPSaveSP]: /images/DemoMode-SPlanner8.png "Exporting a Setplay"
[SPSetpFolder]: /images/DemoMode-SPlanner9.png "Setplays folder"
[SPMultiFlow]: /images/DemoMode-SPlanner10.png "Using Pass to Best Player in a a Multiflow Setplay"
[SPMultiFlowGraph]: /images/DemoMode-SPlanner11.png "Graph of a complete Multiflow Setplay"
[SPDefBeh]: /images/DemoMode-SPlanner12.png "Defensive Behaviors"
[SPDefensiveMarker]: /images/DemoMode-SPlanner13.png "Defensive Marker"
[SPBecOwn]: /images/DemoMode-SPlanner14.png "BecomeOwner behavior"

## Opening games logs

When you run the container with this toolkit, as described in [README.md](/README.md),  you will see the initial screen of [RoboViz](https://github.com/magmaOffenburg/RoboViz) running in demo mode.
You can see this screen in the following image. You should click on the open file button.

![Open a game file in RoboViz][RVizOpenFile]

In the **Open** windows, you should navigate to the root of the folders tree and select the games folder:

![Games folder][RVizGamesFolder]

This folder is inside the container you have downloaded to your computer, and it contains 19 games extracted from *RoboCup 2021 Worldwide competition* and *Portuguese RoboCup Open 2021*.
Each game splits into two files: one for the 1st half and the other for the 2nd half. You can choose any file to open. We ask you to select random files and not in sequence to avoid a bias in the dataset.
If you have time for this, you can also plan to watch all 19 matches and recommend several demonstrations from each game. 

![Choose a game log][RVizGameLog]

When you choose one file and click on the **Open** button, the RoboViz will load the log, and the game will start playing automatically.

## Starting a new demonstration

You can watch the game and use the RoboViz keyboard and mouse commands to control the camera. You can type the hotkey `F1` to see all the RoboViz commands. RoboViz exhibits a small **Logplayer** window, and you can use it
to play/pause the game and advance forward or backward when it is paused. At the right end of this window, there is a box where you can adjust the
log player speed. **This is not a video streaming tool!** It is a Log player which reproduces the simulation of the actual match held during the competitions.
Hence, don't expect RoboViz to perform like a video stream. If you try to go forward or backward too fast, it can crash or present strange behaviors. An option is adjusting the speed to a higher value (maximum is 10) to fast forward or a negative value (minimum is -10) to fast backward. **But do not use negative speeds if you type *space* in the keyboard to activate the trackball mode in the camera**. 

![Starting a new demonstration][RVizStartNew]