local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("music_in")..{
		OnCommand=cmd(play);
	};	
};

t[#t+1] = Def.ActorFrame {
	LoadActor("FadeFromBlack")..{
		OnCommand=cmd(play);
	};	
};

return t;