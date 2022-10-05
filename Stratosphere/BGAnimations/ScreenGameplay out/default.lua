local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("cleared cheer")..{
			StartTransitioningCommand=cmd(queuecommand,"Sound");
			SoundCommand=cmd(play);
	};	
};

t[#t+1] = Def.ActorFrame {
	LoadActor("MusicWheel sort")..{
			StartTransitioningCommand=cmd(queuecommand,"Sound");
			SoundCommand=cmd(play);
	};	
};

t[#t+1] = Def.ActorFrame {
  InitCommand=cmd(Center);
    LoadActor("2") .. {
			OnCommand=cmd(diffusealpha,0;sleep,3.8;linear,0.3;diffusealpha,1;sleep,7.3);
	};
        	
};

return t


	



