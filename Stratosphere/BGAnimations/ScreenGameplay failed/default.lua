local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("crowd gasping")..{
			StartTransitioningCommand=cmd(queuecommand,"Sound");
			SoundCommand=cmd(play);
	};	
};

t[#t+1] = Def.ActorFrame {
	LoadActor("LifeMeterBattery lose")..{
			StartTransitioningCommand=cmd(queuecommand,"Sound");
			SoundCommand=cmd(play);
	};	
};

t[#t+1] = Def.ActorFrame {
  InitCommand=cmd(Center);
    LoadActor("2") .. {
			OnCommand=cmd(diffusealpha,0;sleep,1.5;linear,0.3;diffusealpha,1;sleep,7.3);
	};
        	
};

return t


	



