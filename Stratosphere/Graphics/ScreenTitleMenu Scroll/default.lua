local gc = Var("GameCommand");

local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(Setsize,SCREEN_WIDTH,25;diffuse,Color("Blue");horizalign,Left;faderight,.5);
	};

      LoadFont("_shared2")..{
	  Text=gc:GetText();
          GainFocusCommand=cmd(diffuse,Color("Blue"););
	  LoseFocusCommand=cmd(diffuse,Color("White"););
      };

};

return t;