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
    ControlSend,, {w down}, ahk_id %wowid%
    Sleep, 100
    ControlSend,, {w up}, ahk_id %wowid%

    Sleep, 1000

    ControlSend,, {a down}, ahk_id %wowid%
    Sleep, 100
    ControlSend,, {a up}, ahk_id %wowid%

    Sleep, 1000

    ControlSend,, {d down}, ahk_id %wowid%
    Sleep, 100
    ControlSend,, {d up}, ahk_id %wowid%

    Sleep, 1000

    ControlSend,, {s down}, ahk_id %wowid%
    Sleep, 100
    ControlSend,, {s up}, ahk_id %wowid%

    Sleep, 1000

    ControlSend,, {Space}, ahk_id %wowid%
	
	Sleep, 2000
	
	ControlSend,, 1, ahk_id %wowid%
	Sleep, 61000 
	
	counter++
	
	if (Mod(counter,9) = 0 ){
		ControlSend,, 2, ahk_id %wowid% ; /logout macro
		Sleep, 35000
		ControlSend,, {enter}, ahk_id %wowid% 
		Sleep, 35000
	}
  }
}
return