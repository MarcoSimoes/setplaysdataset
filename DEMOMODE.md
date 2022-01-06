# BahiaRT's Setplays Learning from Demonstration Toolkit

Here we describe most of the usage of the toolkit to crate demonstrations of setplays to a team of simulated humanoid robots. 

1. [Opening games logs](#markdown-header-Opening-games-logs)
2. [Starting a new demonstration](#markdown-header-Starting-a-new-demonstration)

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

When you run the container with this toolkit, as described in [README.md](/README.md),  you will see the initial screen of RoboViz running in demo mode.
You can see this screen in the following image. You should click in the open file button.

![Open a game file in RoboViz][RVizOpenFile]

In the **Open** windows, you should navigate to the root of folders tree and select the games folder:

![Games folder][RVizGamesFolder]

This folder is inside the container you have downloaded to your computer and it contains 19 games extracted from *RoboCup 2021 Worldwide competition* and *Portuguese RoboCup Open 2021*.
Each games is split into two files: one for the 1st half and other for the 2nd half. You can choose any file to open. We ask you to choose randomly files and not in sequence to avoid a bias in the dataset.
If you have time for this, you can also plan to watch all 19 matches and recommend several demonstrations for each match. 

![Choose a game log][RVizGameLog]

When you choose one file and click in the **Open** button, the log will be loaded and the game will start playing automatically.

## Starting a new demonstration