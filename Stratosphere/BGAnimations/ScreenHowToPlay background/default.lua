return Def.ActorFrame {
	LoadActor("informations")..{
		        InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
			OnCommand=cmd(sleep,5.1;linear,.4;diffusealpha,1;cropbottom,0);
	};
}

