﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance, force

; June 2/21
;2 Released to github

;do not edit below

IconLocationsListX1 := [621,1247,1873]
IconLocationsListX2 := [577,577,577]
IconLocationsListY1 := [817,1443,2069]
IconLocationsListY2 := [790,790,790]

Icon1:=1
Icon2:=2
Icon3:=3

PassiveListX := [1000,1600,2200]
PassiveY := 700

Passive1 := 1
Passive2 := 2
Passive3 := 3

RerollX:= 1900
RerollY:= 1225

ResolutionScaleX := [.75, 1]
ResolutionScaleY := [.75, 1]

;IconList :=  ["blackmarket-icon-1440.bmp","cantstopwontstop-icon-1440.bmp","domination-icon-1440.bmp","dragonrage-icon-1440.bmp","duelist-icon-1440.bmp","emptymind-icon-1440.bmp","enfeeblingstrike-icon-1440.bmp","evolution-icon-1440.bmp","flexiblegameplan-icon-1440.bmp","grit-icon-1440.bmp","highereducation-icon-1440.bmp","immortality-icon-1440.bmp","lilbuddies-icon-1440.bmp","manaflow-icon-1440.bmp","naturesfury-icon-1440.bmp","outofthegates-icon-1440.bmp","sharedbounty-icon-1440.bmp","sorcery-icon-1440.bmp","spellslinger-icon-1440.bmp","thebestdefense-icon-1440.bmp","triferianmight-icon-1440.bmp","wildcreation-icon-1440.bmp","yippgenius-icon-1440.bmp"]
;IconListWQHD :=  ["icons-1440\blackmarket-icon-1440.bmp","icons-1440\cantstopwontstop-icon-1440.bmp","icons-1440\domination-icon-1440.bmp","icons-1440\dragonrage-icon-1440.bmp","icons-1440\duelist-icon-1440.bmp","icons-1440\emptymind-icon-1440.bmp","icons-1440\enfeeblingstrike-icon-1440.bmp","icons-1440\evolution-icon-1440.bmp","icons-1440\flexiblegameplan-icon-1440.bmp","icons-1440\grit-icon-1440.bmp","icons-1440\highereducation-icon-1440.bmp","icons-1440\immortality-icon-1440.bmp","icons-1440\lilbuddies-icon-1440.bmp","icons-1440\manaflow-icon-1440.bmp","icons-1440\naturesfury-icon-1440.bmp","icons-1440\outofthegates-icon-1440.bmp","icons-1440\sharedbounty-icon-1440.bmp","icons-1440\sorcery-icon-1440.bmp","icons-1440\spellslinger-icon-1440.bmp","icons-1440\thebestdefense-icon-1440.bmp","icons-1440\triferianmight-icon-1440.bmp","icons-1440\wildcreation-icon-1440.bmp","icons-1440\yippgenius-icon-1440.bmp"]
IconListWQHD :=  ["icons-1440\advancedpreperations-icon-1440.bmp","icons-1440\battlefieldtraining-icon-1440.bmp","icons-1440\blackmarket-icon-1440.bmp","icons-1440\bouncingblades-icon-1440.bmp","icons-1440\cantstopwontstop-icon-1440.bmp","icons-1440\clocksetter-icon-1440.bmp","icons-1440\crush-icon-1440.bmp","icons-1440\domination-icon-1440.bmp","icons-1440\dragonrage-icon-1440.bmp","icons-1440\duelist-icon-1440.bmp","icons-1440\emptymind-icon-1440.bmp","icons-1440\endurance-icon-1440.bmp","icons-1440\enfeeblingstrike-icon-1440.bmp","icons-1440\evolution-icon-1440.bmp","icons-1440\flexiblegameplan-icon-1440.bmp","icons-1440\grit-icon-1440.bmp","icons-1440\highereducation-icon-1440.bmp","icons-1440\holdthemoff-icon-1440.bmp","icons-1440\immortality-icon-1440.bmp","icons-1440\lilbuddies-icon-1440.bmp","icons-1440\manaflow-icon-1440.bmp","icons-1440\naturesfury-icon-1440.bmp","icons-1440\newstudent-icon-1440.bmp","icons-1440\outofthegates-icon-1440.bmp","icons-1440\raidingparty-icon-1440.bmp","icons-1440\rockbearden-icon-1440.bmp","icons-1440\rushthemdown-icon-1440.bmp","icons-1440\seatofpower-icon-1440.bmp","icons-1440\sharedbounty-icon-1440.bmp","icons-1440\sharingiscaring-icon-1440.bmp","icons-1440\sorcery-icon-1440.bmp","icons-1440\sorcery-icon-1440.bmp","icons-1440\spellslinger-icon-1440.bmp","icons-1440\terraforming-icon-1440.bmp","icons-1440\thebestdefense-icon-1440.bmp","icons-1440\thievestools-icon-1440.bmp","icons-1440\triferianmight-icon-1440.bmp","icons-1440\vanguardlookout-icon-1440.bmp","icons-1440\welcomegifts-icon-1440.bmp","icons-1440\wildcreation-icon-1440.bmp","icons-1440\yippgenius-icon-1440.bmp"]

IconListFHD :=  ["icons-1080\advancedpreperations-icon-1080.bmp","icons-1080\battlefieldtraining-icon-1080.bmp","icons-1080\blackmarket-icon-1080.bmp","icons-1080\bouncingblades-icon-1080.bmp","icons-1080\cantstopwontstop-icon-1080.bmp","icons-1080\clocksetter-icon-1080.bmp","icons-1080\crush-icon-1080.bmp","icons-1080\domination-icon-1080.bmp","icons-1080\dragonrage-icon-1080.bmp","icons-1080\duelist-icon-1080.bmp","icons-1080\emptymind-icon-1080.bmp","icons-1080\endurance-icon-1080.bmp","icons-1080\enfeeblingstrike-icon-1080.bmp","icons-1080\evolution-icon-1080.bmp","icons-1080\flexiblegameplan-icon-1080.bmp","icons-1080\grit-icon-1080.bmp","icons-1080\highereducation-icon-1080.bmp","icons-1080\holdthemoff-icon-1080.bmp","icons-1080\immortality-icon-1080.bmp","icons-1080\lilbuddies-icon-1080.bmp","icons-1080\manaflow-icon-1080.bmp","icons-1080\naturesfury-icon-1080.bmp","icons-1080\newstudent-icon-1080.bmp","icons-1080\outofthegates-icon-1080.bmp","icons-1080\raidingparty-icon-1080.bmp","icons-1080\rockbearden-icon-1080.bmp","icons-1080\rushthemdown-icon-1080.bmp","icons-1080\seatofpower-icon-1080.bmp","icons-1080\sharedbounty-icon-1080.bmp","icons-1080\sharingiscaring-icon-1080.bmp","icons-1080\sorcery-icon-1080.bmp","icons-1080\sorcery-icon-1080.bmp","icons-1080\spellslinger-icon-1080.bmp","icons-1080\terraforming-icon-1080.bmp","icons-1080\thebestdefense-icon-1080.bmp","icons-1080\thievestools-icon-1080.bmp","icons-1080\triferianmight-icon-1080.bmp","icons-1080\vanguardlookout-icon-1080.bmp","icons-1080\welcomegifts-icon-1080.bmp","icons-1080\wildcreation-icon-1080.bmp","icons-1080\yippgenius-icon-1080.bmp"]

;
DelayResolution := 50

currentattempts := 0
totalattempts := 0
totalfinds := 0
;do not edit above

;--------------------------------------------------------------------------------------------------
; variables
;--------------------------------------------------------------------------------------------------
;file location to icons
myPassive := "icons-1080\advancedpreperations-icon-1080.bmp"
;helps with image recogniztion
imageVariation :=  155 ;increase if icon isn't working, max 255
;
Resolution := 1 ; 1= 1080, 2=1440
Delay := 0


;--------------------------------------------------------------------------------------------------
; GUI Stuff
;--------------------------------------------------------------------------------------------------

Menu, Tray,  Icon, braum.ico

Gui, -dpiscale
Gui, Add, Picture, x0 y0, labsbackground.png
Gui, Font, Times New Roman, s30, cwhite


Gui, add , DropDownList, xm y165 w140 AltSubmit vResolution gSubmitResolution , 1920x1080||2560x1440|

Gui, add , DropDownList, xm y245 w120 AltSubmit vDelay gSubmitDelay, 50ms||100ms|150ms|200ms|250ms|300ms

Gui, add , DropDownList, xm y205 w260 AltSubmit vPassive gSubmitPassive , Advanced Preperations||Battlefield Training|Black Market Discount|Bouncing Blades|Can't Stop; Won't Stop|Clock Setter|Crush|Domination|Dragon's Rage|Duelist|Empty Mind|Endurance|Enfeebling Strike|Evolution|Flexible Gameplan|Grit|Higher Education|Hold Them Off|Immortality|Lil' Buddies|Manaflow|Nature's Revenge|New Student|Out the Gates|Raiding Party|Rockbear Den|Rush Them Down|Seat of Power|Share the Bounty|Sharing is Caring|Sorcery|Slow But Steady|Spellslinger|Terraforming|The Best Defense...|Thieves' Tools|Trifarian Might|Vanguard Lookout|Welcome Gifts|Wild Inspiration|Yipp's Genius|
Gui, -AlwaysOntop
Gui, Show, x0 y0 w633 h302, Labs Auto Selector GUI Edition 2.0

;Gui, Add, Text, xm y130 w40 vtotalattempts, % totalattempts := 0 ", totalattempts"
;Gui, Add, Text, xm+100 y130 w40 vtotalfinds, % totalfinds := 0 ", totalfinds"


return


GuiClose:
ExitApp

SubmitDelay:
	Gui,+OwnDialogs
	Gui,Submit,NoHide
	;msgbox,% Champ
	return
	
SubmitPassive:
	Gui,+OwnDialogs
	Gui,Submit,NoHide
	
	if(Resolution==1)
	myPassive := IconListFHD[Passive]
	if(Resolution==2)
	myPassive := IconListWQHD[Passive]
	
	;msgbox,% myPassive
	return
	
SubmitResolution:
	Gui,+OwnDialogs
	Gui,Submit,NoHide	
	;msgbox,% Resolution
	return

;UpdateTotalSearches


;UpdateSuccessfulSearches

;--------------------------------------------------------------------------------------------------
; image searching
;--------------------------------------------------------------------------------------------------

^m::



;If image search fails with error 2 then you did setup the file path correctly
ImageSearch, FoundX, FoundY, 0,0, 0,0, %myPassive%
	if(ErrorLevel=2)
	{
		MsgBox, Path to Icon Image Not Found
		ExitApp
		Return
	}

while(true)
{	
			
	MouseClick, left, RerollX*ResolutionScaleX[Resolution], RerollY*ResolutionScaleY[Resolution] ;click reroll
	sleep 350 + (Delay*DelayResolution)
	
	;Image Search First icon
	if(Resolution==1)
	ImageSearch, FoundX, FoundY, 466,432, 616,592, *%imageVariation% %myPassive%	
	else if(Resolution==2)
	ImageSearch, FoundX, FoundY, 621,577, 817,790, *%imageVariation% %myPassive%	
		
		if(ErrorLevel = 0) ;if match, then reset current attempt counter and start run
		{
			MouseClick, left, PassiveListX[Passive1]*ResolutionScaleX[Resolution], PassiveY*ResolutionScaleY[Resolution] 
			sleep  200
			MouseClick, left, ButtonListX[RunConfirm]*ResolutionScaleX[Resolution],ButtonListY[RunConfirm]*ResolutionScaleY[Resolution] 
			;MsgBox, Total Attempts %totalattempts% `n`rCurrent Attempts %currentattempts% `n`rFound Power at Icon 1
					
			currentattempts=0
		
			return
		}
		
	;Image Search second icon
	
	if(Resolution==1)
	ImageSearch, FoundX, FoundY, 935,432,1085,592, *%imageVariation% %myPassive% 
	else if(Resolution==2)
	ImageSearch, FoundX, FoundY, 1247,577, 1443,790, *%imageVariation% %myPassive% 
	
	if(ErrorLevel = 0)
		{
			MouseClick, left, PassiveListX[Passive2]*ResolutionScaleX[Resolution], PassiveY*ResolutionScaleY[Resolution] 
			sleep  200
			MouseClick, left, ButtonListX[RunConfirm]*ResolutionScaleX[Resolution],ButtonListY[RunConfirm]*ResolutionScaleY[Resolution] 
			;MsgBox, Total Attempts %totalattempts% `n`rCurrent Attempts %currentattempts% `n`rFound Power at Icon 2
					
			currentattempts=0				

			return
		}

		
	;Image Search second icon	
	if(Resolution==1)
	ImageSearch, FoundX, FoundY, 1405,432,1555,592, *%imageVariation% %myPassive% 
	else if(Resolution==2)
	ImageSearch, FoundX, FoundY, 1873,577, 2069,790, *%imageVariation% %myPassive% 
	
	if(ErrorLevel = 0)
		{
			MouseClick, left, PassiveListX[Passive3]*ResolutionScaleX[Resolution], PassiveY*ResolutionScaleY[Resolution] 
			sleep  200
			MouseClick, left, ButtonListX[RunConfirm]*ResolutionScaleX[Resolution],ButtonListY[RunConfirm]*ResolutionScaleY[Resolution]  
			;MsgBox, Total Attempts %totalattempts% `n`rCurrent Attempts %currentattempts% `n`rFound Power at Icon 3
			
			currentattempts=0		
			
			return
		}	
	
}


^p::
Pause
return

^x::ExitApp