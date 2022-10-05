return Def.ActorFrame {
	LoadActor("Z")..{
		OnCommand=cmd(FullScreen;diffusealpha,0;decelerate,0.3;diffusealpha,1;sleep,4.3;accelerate,0.3;diffusealpha,0);
	};
};
