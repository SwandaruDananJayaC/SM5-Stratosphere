local gc = Var("GameCommand");

local t = Def.ActorFrame{
	Def.Quad{
      	LoadFont("_song")..{
	  Text=gc:GetText();
	GainFocusCommand=cmd(visible,true;queuecommand,"On");
	LoseFocusCommand=cmd(queuecommand,"Off";visible,false);
      };

};

return t;