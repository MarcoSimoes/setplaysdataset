# BahiaRT's Setplays Learning from Demonstration Toolkit

Here we describe most of the usage of the toolkit to crate demonstrations of setplays to a team of simulated humanoid robots. 

1. [Opening games logs](#markdown-header-opening-games-logs)
2. [Starting a new demonstration](#markdown-header-starting-a-new-demonstration)
3. [Selecting players to a demonstration](#markdown-header-selecting-players-to-a-demonstration)
4. [Creating an Offensive Setplay](#markdown-header-creating-an-offensive-setplay)

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
log player speed.

![Using negative speed to fast backward][RVizPlayBack]

**This is not a video streaming tool!** It is a Log player which reproduces the simulation of the actual match held during the competitions.
Hence, don't expect RoboViz to perform like a video stream. If you try to go forward or backward too fast, it can crash or present strange behaviors. An option is adjusting the speed to a higher value (maximum is 10) to fast forward or a negative value (minimum is -10) to fast backward. **But do not use negative speeds if you type *space* in the keyboard to activate the trackball mode in the camera**. 

![Starting a new demonstration][RVizStartNew]

When you are watching a game and see any play performed by one of the teams that you think was not a good play for that situation, you **Start a new demonstration**. 
Just press the last button in the **Logplayer** window and the RoboViz will pause the game and open the **Start a new demonstration** window. You do not
need to position the game in the initial point of the situation you want to recommend a demonstration, before you click on the **Start a new demonstration** button. 

![New Demonstration Window][RVizNewDemo]

The first step to setting up a new demonstration is selecting the team for which you will recommend this demo. The options are **MIRG** or **BahiaRT** in the example above.
Select one team and then select if your demonstration is for an **offensive** or **defensive** setplay. An offensive setplay is defined when the team you have chosen owns the ball at the start of the setplay. Otherwise, the setplay is defensive.
Be careful to make the correct choice because the toolkit can not check the consistency. The third selection is the playmode of the situation when your setplay will start. The selection box always will list the *PlayOn*, but the other options are dynamic. The RoboViz will collect them from the current game until the instant you have paused it to start a new demonstration. 

The possible playmodes are:
* PlayOn
* Goal Kick
* Corner Kick
* Kick In
* Pass
* Kick Off
* Free Kick

The *Kick In* is like a *Throw In* in soccer but usng the feet instead of the hands. The *Pass* is specific rule of RoboCup Soccer Simulation 3D. It is a command used by players to get some time to perform a kick to pass the ball to a teammate.
It is a transitory rule used to foster teams to perform more passes. When you see a circle around the ball in the same color of one of the teams, means that that team called a *Pass* command. 

![Choosing Team, Situation and Play mode][RVizNewOff]

The selection of playmode is important to tell RoboViz where do you want it to reposition the game log to start your demonstration. For example, if you choose the
team BahiaRT with an offensive setplay and you see the Corner Kick in the list of playmodes, it means that at least one offensive corner kick to BahiaRT was held in this match up to the current time. If you
select the *Corner Kick BahiaRT* playmode, the RoboViz will go the game back to the instant where the last corner kick was played by BahiaRT.

When you click on the *Play* button, the RoboViz will try to reposition your game log in the desired situation. 
This reposition of the game log can be slow and the screen may seem to freeze, but it is not frozen. Just wait for the game to start to run again and you will see that the reposition is ok.
When you see the game running again, click on the *Pause* button immediately. Now you can see the situation and check if it is when you want to start your demo. 
Be careful if you choose the PlayOn playmode. The RoboViz will reposition the game very fast almost in the same situation when you clicked on the *Start a new demonstration* button.
If the new position is not exactly where you want, you can use Logplayer to fast forward or backward the game up to the desired situation.
It is very important to position the game in the correct frame we want to use as the start scene for the setplay you will recommend as a demonstration. 

## Selecting players to a demonstration

After positioning the game in the exact scene you want to use to start the setplay you will demonstrate, you need to choose which players will take part in your setplay. 
You must choose players from the team you chose - we will call it *your team* - and you may select players from the opponent team.

![Select players to new demo][RVizSelTeam]

You can see in the image above an example of the screen where you select players. First, you choose players from your team: teammates. You can click on each player in the field to select it. Notice that the t-shirt number of each selected player is shown near the check box *Teammates selected*.
While choosing teammates, you can click on the field (maybe you need to click twice, not double-click) to set focus to the RoboViz main windows and use camera control to view other players you want to select.
When all Teammates are selected, check the *Teammates selected* checkbox.

![Teammates Selected][RVizTeamSel]

Now you can choose players from the opponent team. This step is optional, but opponent players can be essential to planning some defensive behaviors (e.g., marking) and feed the learning engine with more information to match the setplays with real situations during games. It is good to select the relevant opponent players for the initial situation you chose to start your setplay.
The procedure to select opponent players is similar. Click on each player on the field and see their t-shirt numbers near the *Opponents selected* checkbox. When you are done, click on this check this checkbox.

![Opponents Selected][RVizOppSel]

Now you can click on the *Start demonstration* button to leave RoboViz and launch **SPlanner** to create your setplay. Don't worry. When you finish your setplay, the toolkit will bring you back to RoboViz in the same scene you are now.

## Creating an Offensive Setplay

The toolkit will launch **SPlanner** in the *Create new setplay* window. You can see below that the first two fields are defined from the properties you have already selected from RoboViz: **Type** and **Situation**.
You can not change these properties here. In this example, we have selected an Offensive setplay in RoboViz and a PlayOn playmode.
On this screen, you set up the *Position* of the ball in the start scene of your setplay. The SPlanner collected the ball position from RoboViz, but you can tune your setplay to apply to more generic situations or more specific ones on this screen.

![Setting up a new Offensive Setplay][SPNewOffSP]

The options available to define the position are:

* Point: this is the most restrictive option. When you check Point, the setplay will apply only on situations when the ball is located in a small area around the original ball position in the scene you captured from RoboViz.

* Field: this is the most flexible option. When you check Field, the setplay will apply when the ball is located anywhere in the field.

* Horizontal axis regions: you can choose some regions in the field considering the horizontal axis (X-axis):
    * Our middle field: this region corresponds to half of the field. The defensive half of your team. This region can be split into three subregions:
	    * Our back: This is the first subregion near to our goal post.
		* Our middle: This is the intermediary subregion in the middle of Our middle field.
		* Our front: This is the last subregion in Our middle field near to the line in the half of the field.
	* Their middle field