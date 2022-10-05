return Def.ActorFrame {
	LoadActor("bg")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(FullScreen;diffusealpha,0;decelerate,0.3;diffusealpha,1);
	};
}