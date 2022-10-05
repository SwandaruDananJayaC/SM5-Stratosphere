return Def.ActorFrame {
	LoadActor("Z")..{
		OnCommand=cmd(FullScreen;diffusealpha,0;decelerate,0.3;diffusealpha,1;sleep,8.1;accelerate,0.3;diffusealpha,0);
	};
};
