# Lab of Legends Auto Roller

created by Cyclonus101

Launched June 2/21

This work was original based on my autopassive scrummer script, but with the June 2nd update,    
a lot of changes have been made. You no longer need to reselect your champion to avoid using your  
initial rerolls. You can now reroll infinitely after champion select.  
This work is an update to the original to be functional with the new upgraded labs.  

2.0 June 2/21  
Got rid of selecting champion, focuses exclusively on finding the correct passive  
2.1 June 6/12  
-Updated GUI to show base delay between searches   
-Changed adjustable delay resolution to 25ms instead of 50ms, up to 200ms  
-fixed the visual issue where the passive is double click  
2.2 June 7/21  
-Fixed bug where changing passives before changing resolution would not switch image search to new resolution

June 10/21  
-Fixed typo in evolution passive icon name  
-Changed the delay text and delay dropdown box to align next to each other in the GUI  

June 12/21
-Added 1366x768 support
-Fixed some typos

Function: Reroll passives until you find the one you're searchings for Lab of Legends (a Legends of Runeterra game mode)

Required: Only works on windows 7 or newer and requires AutoHotKey to be installed

Instructions:

1) Download as zip file
2) Unzip project into a folder
3) Double click the AutoPassiveRoller2dot2.ahk file to start up the GUI (start script from the folder)
4) Select Resolution (1920x1080 or 2560x1440 or 1366x768 is currently supported) 
6) Select Passive
7) Select additional delay if the script runs too fast between scenes
9) Pick a champ to play in the labs mode
10) At the passive select screen press CTRL+M to start the script, press CTRL+P to pause, press CTRL+X to exit the script

Warnings: If you change monitor resolution while the script and Legends of  Runeterra is running 
then you should restart the script and Legends of Runeterra. Otherwise it probably won't work.

Some bugs I've discovered so far:

~~1) If you switch to 2560x1440 you need to select Advanced Preparations in the passive menu again~~  
2) Because Riot decided to reuse the sorcery icon for slow but steady, selecting either as your starter passive will select the first one it sees  
3) Sometimes the icon will be skipped over its in a certain positive (I.E middle)   
4) Sometimes the wrong passive might be selected  

Hopefully I'll fix them in the future.
