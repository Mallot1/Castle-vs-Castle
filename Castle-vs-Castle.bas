'Castle vs Castle
'GameGrape Corporation (C)'2014 www.codingrevolution.blogspot.com
'UnLIMITed Corporation (C)'2014

'log: 
  'GameGrape Corporation: 3/20/14 *Programmed player into the game
NOMAINWIN
WindowWidth = DisplayWidth
WindowHeight = DisplayHeight
UpperLeftX = 100
UpperLeftY = 300
loadbmp "mbg", "media\menubackground.bmp" 'we need to draw a menu background
loadbmp "gbg", "media\gamebackground.bmp" 'we need to draw a game background
[menu]
  bmpbutton #menu.play, [game] UL, 100, 100, 100
  open "Main Menu" for graphics_nsb_nf AS #menu
  notice "GameGrape Corporation and UnLIMITed Corporation (C)'2014 All Rights Reserved"
  print #menu, "trapclose [quit]"
  print #menu, "background mbg"
  print #menu, "drawsprites"
  wait

[quit]close #menu:end

[game]
  loadbmp "player", "sprites\player.bmp"
  
  open "Castle vs Castle v1.0.0a" for graphics_nsb_nf as #game
  print #game, "trapclose [gameQuit]
  gosub [setup]
  print #game, "addsprite player player"
  print #game, "spritexy player ";playerx;' ";playery
  print #game, "background gbg"
  print #game, "drawsprites"
  wait
  
[setup]
  playerx = WindowWidth/3-90 
  playery = 0
  return 

[gameQuit]notice "Thank You for playing Castle vs Castle!":close #game:end
