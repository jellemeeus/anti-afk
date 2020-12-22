#SingleInstance force
MsgBox, ,, Script loaded. Activate WoW and press shift+ctrl+F9 to start!, 3
WinGet, wowid, ID, World of Warcraft
SetKeyDelay, 0

$^+F9::
if (enable := !enable)
  setTimer, MoveAround, -1
return

global counter:=0

MoveAround:
while enable
{
  ifWinExist, ahk_id %wowid%
  {  
			;ControlSend,, {Space}, ahk_id %wowid%
			
			Sleep, 2000
			
			ControlSend,, 1, ahk_id %wowid%
			Sleep, 1000
			;ControlSend,, 1, ahk_id %wowid%
			Sleep, 1000

			Sleep, 60000 
			
			counter++
			
			if (Mod(counter,10) = 0 ){
				ControlSend,, 5, ahk_id %wowid%	
				Sleep, 36000
				ControlSend,, {enter}, ahk_id %wowid% 
				Sleep, 36000
			}
  }
}
return