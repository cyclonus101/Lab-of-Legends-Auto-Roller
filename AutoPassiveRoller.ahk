#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance, force

;Created by cyclonus101

; 2.0 June 2/21
; Got rid of selecting champion, focuses exclusively on finding the correct passive
; 2.1 June 6/12
; Updated GUI to be more concise with search delays and fixed double clicking passives 
; 2.2 June 7/21
; Fixed bug where changing passives before changing resolution would not switch image search to new resolution
; June 12/21
; Added 1368x1768 support
; Fixed many typos between the script and image files
; June 24/21
; Received comments about auto roller skipping powers so-
; Added loops to the image search to hopefully improve accuracy
; June 30/21
; Added new powers to selection (counterfeit production / feral senses / lie in wait)
; Changed background picture to reflect current labs
; Fixed a typo
; July 10/21 
; Added 1600x900 (not fully tested) 
; Reverted delay resolution to steps of 50ms which seems to provide better accuracy 
; Base delay was upped to 300ms

;--------------------------------------------------------------------------------------------------
; Hardcoded Variables
;--------------------------------------------------------------------------------------------------
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

ResolutionScaleX := [.75, 1,.534,.625]
ResolutionScaleY := [.75, 1,.534,.625]

;IconList :=  ["blackmarket-icon-1440.bmp","cantstopwontstop-icon-1440.bmp","domination-icon-1440.bmp","dragonrage-icon-1440.bmp","duelist-icon-1440.bmp","emptymind-icon-1440.bmp","enfeeblingstrike-icon-1440.bmp","evolution-icon-1440.bmp","flexiblegameplan-icon-1440.bmp","grit-icon-1440.bmp","highereducation-icon-1440.bmp","immortality-icon-1440.bmp","lilbuddies-icon-1440.bmp","manaflow-icon-1440.bmp","naturesfury-icon-1440.bmp","outofthegates-icon-1440.bmp","sharedbounty-icon-1440.bmp","sorcery-icon-1440.bmp","spellslinger-icon-1440.bmp","thebestdefense-icon-1440.bmp","triferianmight-icon-1440.bmp","wildcreation-icon-1440.bmp","yippgenius-icon-1440.bmp"]
;IconListWQHD :=  ["icons-1440\blackmarket-icon-1440.bmp","icons-1440\cantstopwontstop-icon-1440.bmp","icons-1440\domination-icon-1440.bmp","icons-1440\dragonsrage-icon-1440.bmp","icons-1440\duelist-icon-1440.bmp","icons-1440\emptymind-icon-1440.bmp","icons-1440\enfeeblingstrike-icon-1440.bmp","icons-1440\evolution-icon-1440.bmp","icons-1440\flexiblegameplan-icon-1440.bmp","icons-1440\grit-icon-1440.bmp","icons-1440\highereducation-icon-1440.bmp","icons-1440\immortality-icon-1440.bmp","icons-1440\lilbuddies-icon-1440.bmp","icons-1440\manaflow-icon-1440.bmp","icons-1440\naturesfury-icon-1440.bmp","icons-1440\outofthegates-icon-1440.bmp","icons-1440\sharedbounty-icon-1440.bmp","icons-1440\sorcery-icon-1440.bmp","icons-1440\spellslinger-icon-1440.bmp","icons-1440\thebestdefense-icon-1440.bmp","icons-1440\triferianmight-icon-1440.bmp","icons-1440\wildcreation-icon-1440.bmp","icons-1440\yippgenius-icon-1440.bmp"]

IconListWQHD   := ["icons-1440\advancedpreperations-icon-1440.bmp","icons-1440\battlefieldtraining-icon-1440.bmp","icons-1440\blackmarket-icon-1440.bmp","icons-1440\bouncingblades-icon-1440.bmp","icons-1440\cantstopwontstop-icon-1440.bmp","icons-1440\clocksetter-icon-1440.bmp","icons-1440\counterfeitproduction-icon-1440.bmp", "icons-1440\crush-icon-1440.bmp","icons-1440\domination-icon-1440.bmp","icons-1440\dragonsrage-icon-1440.bmp","icons-1440\duelist-icon-1440.bmp","icons-1440\emptymind-icon-1440.bmp","icons-1440\endurance-icon-1440.bmp","icons-1440\enfeeblingstrike-icon-1440.bmp","icons-1440\evolution-icon-1440.bmp","icons-1440\feralsenses-icon-1440.bmp","icons-1440\flexiblegameplan-icon-1440.bmp","icons-1440\grit-icon-1440.bmp","icons-1440\highereducation-icon-1440.bmp","icons-1440\holdthemoff-icon-1440.bmp","icons-1440\immortality-icon-1440.bmp","icons-1440\lieinwait-icon-1440.bmp","icons-1440\lilbuddies-icon-1440.bmp","icons-1440\manaflow-icon-1440.bmp","icons-1440\naturesfury-icon-1440.bmp","icons-1440\newstudent-icon-1440.bmp","icons-1440\outthegates-icon-1440.bmp","icons-1440\raidingparty-icon-1440.bmp","icons-1440\rockbearden-icon-1440.bmp","icons-1440\rushthemdown-icon-1440.bmp","icons-1440\seatofpower-icon-1440.bmp","icons-1440\sharethebounty-icon-1440.bmp","icons-1440\sharingiscaring-icon-1440.bmp","icons-1440\sorcery-icon-1440.bmp","icons-1440\sorcery-icon-1440.bmp","icons-1440\spellslinger-icon-1440.bmp","icons-1440\terraforming-icon-1440.bmp","icons-1440\thebestdefense-icon-1440.bmp","icons-1440\thievestools-icon-1440.bmp","icons-1440\triferianmight-icon-1440.bmp","icons-1440\vanguardlookout-icon-1440.bmp","icons-1440\welcomegifts-icon-1440.bmp","icons-1440\wildinspiration-icon-1440.bmp","icons-1440\yippgenius-icon-1440.bmp"]
IconListFHD    := ["icons-1080\advancedpreperations-icon-1080.bmp","icons-1080\battlefieldtraining-icon-1080.bmp","icons-1080\blackmarket-icon-1080.bmp","icons-1080\bouncingblades-icon-1080.bmp","icons-1080\cantstopwontstop-icon-1080.bmp","icons-1080\clocksetter-icon-1080.bmp","icons-1080\counterfeitproduction-icon-1080.bmp", "icons-1080\crush-icon-1080.bmp","icons-1080\domination-icon-1080.bmp","icons-1080\dragonsrage-icon-1080.bmp","icons-1080\duelist-icon-1080.bmp","icons-1080\emptymind-icon-1080.bmp","icons-1080\endurance-icon-1080.bmp","icons-1080\enfeeblingstrike-icon-1080.bmp","icons-1080\evolution-icon-1080.bmp","icons-1080\feralsenses-icon-1080.bmp","icons-1080\flexiblegameplan-icon-1080.bmp","icons-1080\grit-icon-1080.bmp","icons-1080\highereducation-icon-1080.bmp","icons-1080\holdthemoff-icon-1080.bmp","icons-1080\immortality-icon-1080.bmp","icons-1080\lieinwait-icon-1080.bmp","icons-1080\lilbuddies-icon-1080.bmp","icons-1080\manaflow-icon-1080.bmp","icons-1080\naturesfury-icon-1080.bmp","icons-1080\newstudent-icon-1080.bmp","icons-1080\outthegates-icon-1080.bmp","icons-1080\raidingparty-icon-1080.bmp","icons-1080\rockbearden-icon-1080.bmp","icons-1080\rushthemdown-icon-1080.bmp","icons-1080\seatofpower-icon-1080.bmp","icons-1080\sharethebounty-icon-1080.bmp","icons-1080\sharingiscaring-icon-1080.bmp","icons-1080\sorcery-icon-1080.bmp","icons-1080\sorcery-icon-1080.bmp","icons-1080\spellslinger-icon-1080.bmp","icons-1080\terraforming-icon-1080.bmp","icons-1080\thebestdefense-icon-1080.bmp","icons-1080\thievestools-icon-1080.bmp","icons-1080\triferianmight-icon-1080.bmp","icons-1080\vanguardlookout-icon-1080.bmp","icons-1080\welcomegifts-icon-1080.bmp","icons-1080\wildinspiration-icon-1080.bmp","icons-1080\yippgenius-icon-1080.bmp"]
IconListHD     := ["icons-768\advancedpreperations-icon-768.bmp"  ,"icons-768\battlefieldtraining-icon-768.bmp"  ,"icons-768\blackmarket-icon-768.bmp"  ,"icons-768\bouncingblades-icon-768.bmp"  ,"icons-768\cantstopwontstop-icon-768.bmp"  ,"icons-768\clocksetter-icon-768.bmp"  , "icons-768\counterfeitproduction-icon-768.bmp", "icons-768\crush-icon-768.bmp","icons-768\domination-icon-768.bmp"  ,"icons-768\dragonsrage-icon-768.bmp"  ,"icons-768\duelist-icon-768.bmp"  ,"icons-768\emptymind-icon-768.bmp"  ,"icons-768\endurance-icon-768.bmp"  ,"icons-768\enfeeblingstrike-icon-768.bmp"  ,"icons-768\evolution-icon-768.bmp"  ,"icons-768\feralsenses-icon-768.bmp","icons-768\flexiblegameplan-icon-768.bmp"  ,"icons-768\grit-icon-768.bmp"  ,"icons-768\highereducation-icon-768.bmp"  ,"icons-768\holdthemoff-icon-768.bmp"  ,"icons-768\immortality-icon-768.bmp"   ,  "icons-768\lieinwait-icon-768.bmp","icons-768\lilbuddies-icon-768.bmp"  ,"icons-768\manaflow-icon-768.bmp"  ,"icons-768\naturesfury-icon-768.bmp"  ,"icons-768\newstudent-icon-768.bmp"  ,"icons-768\outthegates-icon-768.bmp"  ,"icons-768\raidingparty-icon-768.bmp"  ,"icons-768\rockbearden-icon-768.bmp"  ,"icons-768\rushthemdown-icon-768.bmp"  ,"icons-768\seatofpower-icon-768.bmp"  ,"icons-768\sharethebounty-icon-768.bmp"  ,"icons-768\sharingiscaring-icon-768.bmp"  ,"icons-768\sorcery-icon-768.bmp"  ,"icons-768\sorcery-icon-768.bmp"  ,"icons-768\spellslinger-icon-768.bmp"  ,"icons-768\terraforming-icon-768.bmp"  ,"icons-768\thebestdefense-icon-768.bmp"  ,"icons-768\thievestools-icon-768.bmp"  ,"icons-768\triferianmight-icon-768.bmp"  ,"icons-768\vanguardlookout-icon-768.bmp"  ,"icons-768\welcomegifts-icon-768.bmp"  ,"icons-768\wildinspiration-icon-768.bmp"  ,"icons-768\yippgenius-icon-768.bmp"]
IconListHDPLUS := ["icons-900\advancedpreperations-icon-900.bmp"  ,"icons-900\battlefieldtraining-icon-900.bmp"  ,"icons-900\blackmarket-icon-900.bmp"  ,"icons-900\bouncingblades-icon-900.bmp"  ,"icons-900\cantstopwontstop-icon-900.bmp"  ,"icons-900\clocksetter-icon-900.bmp"  , "icons-900\counterfeitproduction-icon-900.bmp", "icons-900\crush-icon-900.bmp","icons-900\domination-icon-900.bmp"  ,"icons-900\dragonsrage-icon-900.bmp"  ,"icons-900\duelist-icon-900.bmp"  ,"icons-900\emptymind-icon-900.bmp"  ,"icons-900\endurance-icon-900.bmp"  ,"icons-900\enfeeblingstrike-icon-900.bmp"  ,"icons-900\evolution-icon-900.bmp"  ,"icons-900\feralsenses-icon-900.bmp","icons-900\flexiblegameplan-icon-900.bmp"  ,"icons-900\grit-icon-900.bmp"  ,"icons-900\highereducation-icon-900.bmp"  ,"icons-900\holdthemoff-icon-900.bmp"  ,"icons-900\immortality-icon-900.bmp"   ,  "icons-900\lieinwait-icon-900.bmp","icons-900\lilbuddies-icon-900.bmp"  ,"icons-900\manaflow-icon-900.bmp"  ,"icons-900\naturesfury-icon-900.bmp"  ,"icons-900\newstudent-icon-900.bmp"  ,"icons-900\outthegates-icon-900.bmp"  ,"icons-900\raidingparty-icon-900.bmp"  ,"icons-900\rockbearden-icon-900.bmp"  ,"icons-900\rushthemdown-icon-900.bmp"  ,"icons-900\seatofpower-icon-900.bmp"  ,"icons-900\sharethebounty-icon-900.bmp"  ,"icons-900\sharingiscaring-icon-900.bmp"  ,"icons-900\sorcery-icon-900.bmp"  ,"icons-900\sorcery-icon-900.bmp"  ,"icons-900\spellslinger-icon-900.bmp"  ,"icons-900\terraforming-icon-900.bmp"  ,"icons-900\thebestdefense-icon-900.bmp"  ,"icons-900\thievestools-icon-900.bmp"  ,"icons-900\triferianmight-icon-900.bmp"  ,"icons-900\vanguardlookout-icon-900.bmp"  ,"icons-900\welcomegifts-icon-900.bmp"  ,"icons-900\wildinspiration-icon-900.bmp"  ,"icons-900\yippgenius-icon-900.bmp"]

;--------------------------------------------------------------------------------------------------
; Runtime Variables
;--------------------------------------------------------------------------------------------------
;file location to icons, initialled to the first alphabetically avaliable passive in 1080p
myPassive := "icons-1080\advancedpreperations-icon-1080.bmp"

;helps with image recognition,  increase if icon isn't working, max 255
imageVariation :=  165 
;
Resolution := 1 ; 1= 1080, 2=1440, 3= 768 4 = 900
; Delays between searching for new passive
BaseDelay := 300
Delay := 0
DelayResolution := 50
; Future Use
currentattempts := 0
totalattempts := 0
totalfinds := 0

LoopAttempts := 0 ; retry finding icons 

;--------------------------------------------------------------------------------------------------
; GUI Stuff
;--------------------------------------------------------------------------------------------------

Menu, Tray,  Icon, braum.ico

Gui, -dpiscale
Gui, Add, Picture, x0 y0, labsbackground.png
Gui, Font, Times New Roman, s30, cwhite


;Resolution dropdown box
Gui, add , DropDownList, xm y165 w140 AltSubmit vResolution gSubmitResolution , 1920x1080||2560x1440|1366x768|1600x900

;passive dropdown box
Gui, add , DropDownList, xm y205 w260 AltSubmit vPassive gSubmitPassive , Advanced Preparations||Battlefield Training|Black Market Discount|Bouncing Blades|Can't Stop; Won't Stop|Clock Setter|Counterfeit Production|Crush|Domination|Dragon's Rage|Duelist|Empty Mind|Endurance|Enfeebling Strike|Evolution|Feral Senses|Flexible Gameplan|Grit|Higher Education|Hold Them Off|Immortality|Lie in Wait|Lil' Buddies|Manaflow|Nature's Revenge|New Student|Out the Gates|Raiding Party|Rockbear Den|Rush Them Down|Seat of Power|Share the Bounty|Sharing is Caring|Sorcery|Slow But Steady|Spellslinger|Terraforming|The Best Defense...|Thieves' Tools|Trifarian Might|Vanguard Lookout|Welcome Gifts|Wild Inspiration|Yipp's Genius|
Gui, -AlwaysOntop

;Base delay text box
Gui, Color, E1E1E1
Gui, add ,text,  xm y245 w105 h33 Center +border 0x200, %BaseDelay% ms  +

;Additional delay dropdown box
Gui, add , DropDownList, xm+105 y245 w100 AltSubmit vDelay gSubmitDelay, 0ms||50ms|100ms|150ms|200ms|250ms|300ms|350ms|400ms


Gui, Show, x0 y0 w633 h302, Labs Auto Selector GUI Edition 2.0 July 10/21 Edition

return


GuiClose:
ExitApp


;--------------------------------------------------------------------------------------------------
;Functions for updating variables from dropdown menu boxes
;--------------------------------------------------------------------------------------------------

SubmitDelay:
	Gui,+OwnDialogs
	Gui,Submit,NoHide
	;msgbox,% Champ
	return
	
SubmitPassive:
	Gui,+OwnDialogs
	Gui,Submit,NoHide
	
	if(Resolution==1)
	{
		myPassive := IconListFHD[Passive]
		imageVariation=165
	}
	
	if(Resolution==2)
	{
		myPassive := IconListWQHD[Passive]
		imageVariation=145
	}
	if(Resolution==3)
	{
		myPassive := IconListHD[Passive]
		imageVariation=185
	}
	
	if(Resolution==4)
	{
		myPassive := IconListHDPLUS[Passive]
		imageVariation=185
	}
	
	
	;msgbox,% myPassive
	return
	
SubmitResolution:
	Gui,+OwnDialogs
	Gui,Submit,NoHide	
	
	if(Resolution==1)
	myPassive := IconListFHD[Passive]
	if(Resolution==2)
	myPassive := IconListWQHD[Passive]
	if(Resolution==3)
	myPassive := IconListHD[Passive]
	if(Resolution==4)	
	myPassive := IconListHDPLUS[Passive]
	
	;msgbox,% Resolution
	return

;--------------------------------------------------------------------------------------------------
; image searching
;--------------------------------------------------------------------------------------------------

;Start Button
^m::

;If image search fails with error 2 then the file path is incorrect 
;or there is a typo in the icon name

ImageSearch, FoundX, FoundY, 0,0, 0,0, %myPassive%
	if(ErrorLevel=2)
	{
		MsgBox, Path to Icon Image Not Found
		ExitApp
		Return
	}

while(true)
{	
	;click reroll, then wait for menu to update		
	MouseClick, left, RerollX*ResolutionScaleX[Resolution], RerollY*ResolutionScaleY[Resolution] 
	sleep BaseDelay + (Delay*DelayResolution)	
	
	
	LoopAttempts = 3
	
	while(--LoopAttempts)
	{
	
	;Image Search 1st icon
	if(Resolution==1)
	ImageSearch, FoundX, FoundY, 466,432, 616,592, *%imageVariation% %myPassive%	
	
	else if(Resolution==2)
	ImageSearch, FoundX, FoundY, 621,577, 817,790, *%imageVariation% %myPassive%	
	
	else if(Resolution==3)
	ImageSearch, FoundX, FoundY, 331,307, 437,421, *%imageVariation% %myPassive%	
	
	else if(Resolution==4)
	ImageSearch, FoundX, FoundY, 388,360, 510,494, *%imageVariation% %myPassive%	
		
		if(ErrorLevel = 0) ;if match, then reset current attempt counter and start run
		{
			MouseClick, left, PassiveListX[Passive1]*ResolutionScaleX[Resolution], PassiveY*ResolutionScaleY[Resolution] 
			sleep  200
			
			return
		}
		
	;Image Search 2nd icon	
	if(Resolution==1)
	ImageSearch, FoundX, FoundY, 935,432,1085,592, *%imageVariation% %myPassive% 
	
	else if(Resolution==2)
	ImageSearch, FoundX, FoundY, 1247,577, 1443,790, *%imageVariation% %myPassive% 
	
	else if(Resolution==3)
	ImageSearch, FoundX, FoundY, 665,307, 770,421, *%imageVariation% %myPassive%	
	
	else if(Resolution==4)
	ImageSearch, FoundX, FoundY, 779,360, 901,494, *%imageVariation% %myPassive%	
	
	if(ErrorLevel = 0)
		{
			MouseClick, left, PassiveListX[Passive2]*ResolutionScaleX[Resolution], PassiveY*ResolutionScaleY[Resolution] 
			sleep  200

			return
		}

		
	;Image Search 3rd icon	
	if(Resolution==1)
	ImageSearch, FoundX, FoundY, 1405,432,1555,592, *%imageVariation% %myPassive% 
	
	else if(Resolution==2)
	ImageSearch, FoundX, FoundY, 1873,577, 2069,790, *%imageVariation% %myPassive% 
	
	else if(Resolution==3)
	ImageSearch, FoundX, FoundY, 999,307, 1104,421, *%imageVariation% %myPassive%	
	
	else if(Resolution==4)
	ImageSearch, FoundX, FoundY, 1171,360, 1293,494, *%imageVariation% %myPassive%	
	
	if(ErrorLevel = 0)
		{
			MouseClick, left, PassiveListX[Passive3]*ResolutionScaleX[Resolution], PassiveY*ResolutionScaleY[Resolution] 
			sleep  200
	
			return
		}
	}
		
}


^p::
Pause
return

^x::ExitApp
