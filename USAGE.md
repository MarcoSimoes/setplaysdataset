# BahiaRT's Setplays Learning from Demonstration Toolkit

Here we describe most of the usage of the toolkit to crate demonstrations of setplays to a team of simulated humanoid robots. 

1. [Opening games logs](#markdown-header-opening-games-logs)
2. [Starting a new demonstration](#markdown-header-starting-a-new-demonstration)
3. [Selecting players to a demonstration](#markdown-header-selecting-players-to-a-demonstration)
4. [Creating an Offensive Setplay](#markdown-header-creating-an-offensive-setplay)
    1. [Offensive Marker](#markdown-header-offensive-marker)
    2. [Non-Ball Owner Players Offensive Behaviors](#markdown-header-non-ball-owner-players-offensive-behaviors)
    3. [Ball Owner Players Offensive Behaviors](#markdown-header-ball-owner-players-offensive-behaviors)
5. [Creating a Defensive Setplay](#markdown-header-creating-a-defensive-setplay)

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
[SPOffMarkerOptions]: /images/DemoMode-SPlanner4.png "Options for Offensive Marker"
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

[SPHorRegions]: /images/SPlanner-Regioes-Horizontais.png "SPlanner Horizontal regions"
[SPVerRegions]: /images/SPlanner-Regioes-Verticais.png "SPlanner Vertical regions"

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

After positioning the game in the exact scene you want to use to start the setplSPSaveSPay you will demonstrate, you need to choose which players will take part in your setplay. 
You must choose players from the team you chose - we will call it *your team* - and you may select players from the opponent team.

![Select players to new demo][RVizSelTeam]

You can see in the image above an example of the screen where you select players. First, you choose players from your team: teammates. You can click on each player in the field to select it. Notice that the t-shirt number of each selected player is shown near the check box *Teammates selected*.
While choosing teammates, you can click on the field (maybe you need to click twice, not double-click) to set focus to the RoboViz main windows and use camera control to view other players you want to select.
When all Teammates are selected, check the *Teammates selected* checkbox.
A player executing *Hold* will do his best to avoid losing ball possession, but he will not move the ball to a particular region. He will only hold the ball in the same area where he is in the current step.

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

* Point: this is the most restrictive option. When you check Point, the setplay will apply only to situations when the ball is located in a small area around the original ball position in the scene you captured from RoboViz.

* Field: this is the most flexible option. When you check the Field, the setplay will apply when the ball is located anywhere in the field.

* Horizontal axis regions: you can choose some areas in the field considering the horizontal axis (X-axis):
    * Our middle field: this region corresponds to half of the field. The defensive half of your team. This region can be split into three subregions:
	    * Our back: This is the first subregion near to our goal post.
		* Our middle: This is the intermediary subregion in the middle of Our middle field.
		* Our front: This is the last subregion in Our middle field near the line in the half of the field.
	* Their middle field: this region corresponds to the opponent's defensive half of the field. This region can be split into three subregions:
	    * Their front: This is the subregion in Their middle field near the line in the half of the field.
		* Their middle: This is the subregion in the middle of Their middle field. 
		* Their back: This is the subregion near to their goalpost. It is where your team scores goals.
		
![SPlanner Horizontal regions][SPHorRegions]

* Vertical axis regions: you can choose some areas in the field considering the vertical axis (Y-axis):
    * Left: This region corresponds to the left side of the field, considering your team's goalie regular position. This region can be split into three subregions:
	    * Far left: This is the farthest subregion on the left side of the field. It is near the left sideline.
		* Middle left: This is the intermediary subregion on the left side of the field.
		* Center left: This is the subregion near to the center of your goal post on the left side of the field.
	* Right: This region corresponds to the right side of the field considering your team's goalie regular position. This region can be split into three subregions:
	    * Center right: This is the subregion near to the center of your goal post on the right side of the field.
		* Middle right: This is the intermediary subregion on the right side of the field.
		* Far right: This is the farthest subregion on the right side of the field. It is near the right sideline.
		
![SPlanner Vertical regions][SPVerRegions]
	
Both images above consider that your team is playing on the left side of the screen in the RoboViz window. If your team is playing on the right side of the screen,  these images are mirrored. The Our back subregion would be the rightest in the field, while the Far left would be at the bottom of the screen. So the best way to define precisely these subregions is thinking of your team's goalie standing up in the center of your goalpost, looking towards their goalpost. This is the reference to define all subregions.

When choosing Horizontal and Vertical axis regions, the SPlanner will consider the intersection of your Horizontal regions selection and your Vertical regions selection. The result of this intersection is the area where your setplay can be used, considering the ball position in the initial scene. These position options allow defining both generic and specialized setplays. After selecting your position regions, click on the *Create* button to see the screen below.

![OffensiveMarker][SPOffMarkerMenu]

It is possible to see that we have selected the subregions: *Their back*, *Their middle*, *Left*, and *Right*. The hatched area is the intersection of all selected subregions.
The image also shows that the SPlanner captured the exact scene when you started your demonstration in the RoboViz. The team you have chosen as
*your team* is now using white t-shirts, and the opponent team uses blue t-shirts. *Your team* is always defending the left side of the field in SPlanner.

### Offensive Marker

To start your demonstration, you need to define what behaviors you want each of your team's players to execute in step 0. To do this, you can right-click on a teammate, and you
will see a menu like the one in the image above. The first behavior you can see for a non-ball owner player is the **offensive marker**. 
The offensive marker is a blocking behavior. We expect the player performing offensive marker to block the path of a specific opponent relative to the ball, or a particular teammate, or one of the goalposts, or a particular point on the field. 
When you select an offensive marker, one brown arrow will appear, and you should choose the opponent you want to mark and left-click on him. 
Now you will see the image below, and you should select the tab named *Step position*.

![Offensive Marker Options][SPOffMarkerOptions]

You can select one of the following options:

* Relative to the ball: if you want the offensive marker to block the path of the chosen opponent to the ball.

* Relative to goalpost: if you want the offensive marker to block the path of the chosen opponent to one of the goalposts. In this case, you should also select *Goal Post Our* or *Goal Post Their* to define what goalpost is your reference.

* Relative to a specific point: if you want the offensive marker to block the path of the chosen opponent to a particular point on the field. In this case, you should inform the *(x,y)* coordinates of the specific point.

* Relative to a player: if you want the offensive marker to block the path of the chosen opponent to a particular teammate. In this case, you should select the specific teammate used as a reference.

When you are done, click on the button **Save**. By default, the *Relative to ball* option is selected.

![Offensive Marker Arrow][SPOffMarkerSeta]

The image above shows a brown arrow that indicates the estimated position where the Offensive Marker should go. This position is the medium point between the marked opponent and the object or point chosen as reference.
This arrow may not be so evident in some situations, but the behavior is ok. 

### Non-Ball Owner Players Offensive Behaviors

The remaining possible behaviors for non-ball owner players are:
A player executing *Hold* will do his best to avoid losing ball possession, but he will not move the ball to a particular region. He will only hold the ball in the same area where he is in the current step.

* **Run - Straight**: When a player executes this behavior, he is expected to run to a particular region on the field as fast as he can without having to worry about avoiding obstacles. This behavior is supposed to be used for long sprints that make some players appear in some parts of the field to receive a pass, for example, and surprise the opponent team. It may be used when you are sure that the player has a free path in front of him and will not collide with teammates or opponents.


![Offensive Behaviors][SPBehNonBO]

* **Run - Path planned**: The player must avoid colliding with teammates and opponents when executing this behavior. The player can not use its highest possible speed and should carefully plan his path to the target region. You may use this behavior to move short distances or when the path is crowded with other players.

* **Wait**: This behavior means staying where you are. The player will remain in his current position or some strategic position. 

An extra option highlighted in the image above is the *Change position ...*. This option is not a behavior. You can use it in any step to change the position of a particular player. It is useful when SPlanner does not estimate the position of a player in the following step as you think. So, you can adjust the position yourself. 

### Ball Owner Players Offensive Behaviors

You see a different menu when you right-click on your teammate who owns the ball possession. The following image show this menu.

![Ball Owner Offensive Behaviors][SPBehBO]

The available behaviors are:

* **Pass to best player**: The player executing this behavior should decide who is the best teammate to receive a pass in the current situation. When you use this behavior, you should create a multi-flow setplay. First, you will make the green arrow point to one of the possible teammates to receive a pass. Them you plan the behaviors you want the other teammates to perform when the chosen teammate receives a pass, as you can see in the following image. Player number 4 will perform a Pass to Best Player. If he chooses teammate number 10 to receive the pass, the other teammates will execute offensive marker and other behaviors as shown below.

![Using Pass to Best Player to Create a Multi-Flow Setplay][SPMultiFlow]A player executing *Hold* will do his best to avoid losing ball possession, but he will not move the ball to a particular region. He will only hold the ball in the same area where he is in the current step.


After that, you need to give other pass options to player number 4. So, right-click in the setplay graph on the left side of the screen on the current step (in this case, it is step 0) and choose *Add transition* -> *Create a new Step*. A new step 3 is created, and a new transition from step 0 to step 3 is set. You can now make another *Pass to Best Player* from player number 4 to teammate number 11 and define the behaviors for the other teammates when the number 11 is chosen to receive a pass. Repeat this procedure to create another transition from step 0 to a new step 4 and define a *Pass to Best Player* to teammate number 9. Now you get a screen like this:

![A Multi-flow Setplay Graph][SPMultiFlowGraph]

Look at the Setplay Graph. You can see three transitions from step 0 to steps 1, 3, and 4. When you click on each transition, you can see a different play resulting from the player number 4 choice for the pass receiver. The image above shows the play resulted from choosing teammate number 9 to receive a pass. This behavior is excellent for creating sophisticated multi-flow setplays.
You can also see on the right side of the screen a small menu you get when you right-click on an opponent. The unique behavior available in offensive setplays is the *Run*. You can use it to estimate some opponents' movements during your setplay. Using opponents' behaviors estimation is helpful to provide more realistic setplays. You also change the position of opponents on each step.

* **Pass Forward to ...**: A more straightforward way to create setplays with passes is using *Pass Forward to...*. This behavior does not require a multi-flow setplay (but you can use it if you want). You choose the player to receive the pass and point the arrow to a position  (generally in front of the receiver). Two behaviors are generated: the pass and an intercept behavior (defined as a yellow arrow), making the receiver start moving to the receiving point.

* **Pass**: Another option for performing passes is defining a teammate as a pass target, and the passer will achieve a pass towards the region where the receiver is in the current step. Just point to the receiver, and the *Pass* is ok.

* **Shoot**: The *Shoot* means kick to goal. When you want a player to score a goal, use *Shoot*. You will see a red beam coming from the player performing the shoot towards the opponent's goal. The image below shows a complete setplay using a *Shoot* in the last step.

![Finishing a setplay with Shoot][SPGraphName]

It is widespread to finish offensive setplays using a *Shoot*, but it is not mandatory. You can notice that all setplays have a name. When you export the setplay to a file, this name is used as the file name by default. You can customize the name of your setplay as you want.

* **Dribble**: When you want a player to move the ball to a different field region and avoid losing possession during his path,  you use the *Dribble* behavior. The *Dribble* is the unique option to make a ball owner move on the field. You can left-click anywhere in the target subregion, and the behavior is created.

* **Hold**: A player executing *Hold* will do his best to avoid losing ball possession, but he will not move the ball to a particular region. He will only hold the ball in the same area where he is in the current step.

## Creating a Defensive Setplay

You can create a defensive setplay like you have created offensive setplays. While you define the start demonstration properties in RoboViz, you should choose *Defensive* as the type of the setplay. Remember to use this option when your team does not have the ball possession. 
When SPlanner is launched, you can see that the ball owner is one player from the opponent team (blue team). When you right-click on a player from your team, you will see the following menu:

![Defensive Behaviors][SPDefBeh]

Some options in this menu(e.g., *Run - Straight*, *Run - Path planned*) were described in the offensive setplays explanation and performed similarly for defensive setplays.
The other behaviors available only in defensive setplays are:

* **Defensive Marker**: This behavior makes the player position somewhere between the target opponent and your teams' goal post. The idea is to mark the opponent turning harder to receive a pass successfully. Suppose the selected opponent is the ball owner. In that case, this behavior will make the player approach the target opponent, trying to block any dribble or kick option and position to get the ball possession.

![Defensive Marker Behavior][SPDefensiveMarker]

The image above shows an example where several teammates perform *Defensive Marker* blocking all dribble and pass options for the opponent team. Players number 1 and 3 executes *Run - Path planned* going towards our goalpost to protect it better. 

* **Become Owner**: This behavior is the main goal in a defensive setplay. Use it when you can position a player very near the ball owner in good condition to get the ball possession. If the player from your team can get the ball possession, the setplay will finish with success. Below, you can see a situation where player number 6 can execute a *Become Owner* behavior.

![Become Owner Behavior][SPBecOwn]

## Exporting a Setplay to a File

When you finish your setplay, you can save it using the menu *File*->*Export Setplay* or type the hotkey ```F3```:

![Exporting a Setplay][SPSaveSP]

Navigate in the folder tree and locate the *setplays* folder:

![Setplays Folder][SPSetpFolder]

Give a name to your file and save it.
