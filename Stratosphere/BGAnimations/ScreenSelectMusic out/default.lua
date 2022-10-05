local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
    LoadActor("C") .. {
					InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
			OnCommand=cmd(diffusealpha,0;sleep,0.1;linear,0.3;diffusealpha,1;sleep,3.3);
	};
        	
};

t[#t+1] = Def.ActorFrame {
    LoadActor("3") .. {
					InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
			OnCommand=cmd(diffusealpha,0;sleep,0.7;linear,0.3;diffusealpha,1;sleep,2.3);
	};
        	
};

return t
