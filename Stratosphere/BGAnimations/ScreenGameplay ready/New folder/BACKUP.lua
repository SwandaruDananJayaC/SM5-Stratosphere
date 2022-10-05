--[[return Def.ActorFrame {
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y+1;glow,color("1,1,1,0");zoomy,0;zoomx,1.34;sleep,0.0000;accelerate,0.133;zoomy,0.807;zoomx,1;decelerate,0.066;zoomy,1.192;glow,color("1,1,1,0.5");sleep,0.016;accelerate,0.033;glow,color("1,1,1,0");zoomy,1);
		OnCommand=cmd(sleep,0.907;diffusealpha,0);
	};
}]]--

local t = Def.ActorFrame{}


t[#t+1] = Def.ActorFrame {
	LoadActor( "scene_choice_stage_bg" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomy,0;);
		OnCommand=function(self)
		self:diffusealpha(0):zoom(0):sleep(0.1):linear(0.1):diffusealpha(1):zoom(1.25)
		:linear(0.1):diffusealpha(1):zoom(1):sleep(2.45):linear(0):zoomy(0):diffusealpha(0);
		end;
		};


	LoadActor( "scene_choice_stage_line" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomx,0;);
		OnCommand=function(self)
		self:diffusealpha(0):zoomx(0):sleep(0.1)
		:linear(0.25):diffusealpha(1):zoomx(1):linear(0.25):diffusealpha(0);
		end;
		};


	--Right
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,1;linear,0.15;zoom,1;x,SCREEN_CENTER_X-0;linear,0.15;diffusealpha,1;zoomx,2;zoomy,2.9;linear,0.15;diffusealpha,1;zoomx,2.25;zoomy,2.25;linear,0.2;zoom,2;sleep,2.1;linear,0;diffusealpha,0;zoom,1.5*1.5);
	};
	
	
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,1;linear,0.15;zoom,1;x,SCREEN_CENTER_X-0;linear,0.15;diffusealpha,0;zoomx,2;zoomy,2.9;linear,0.15;diffusealpha,0;zoomx,2.25;zoomy,2.25;linear,0.2;zoom,2;linear,0.25;diffusealpha,0.25;zoom,2.1;linear,0.25;diffusealpha,0;zoom,2.2;); 
	};
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,1;linear,0.15;zoom,1;x,SCREEN_CENTER_X-0;linear,0.15;diffusealpha,0;zoomx,2;zoomy,2.9;linear,0.15;diffusealpha,0;zoomx,2.25;zoomy,2.25;linear,0.2;zoom,2;sleep,0.5;linear,0.25;diffusealpha,0.25;zoom,2.1;linear,0.25;diffusealpha,0;zoom,2.2;); 
	};
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,1;linear,0.15;zoom,1;x,SCREEN_CENTER_X-0;linear,0.15;diffusealpha,0;zoomx,2;zoomy,2.9;linear,0.15;diffusealpha,0;zoomx,2.25;zoomy,2.25;linear,0.2;zoom,2;sleep,1;linear,0.25;diffusealpha,0.25;zoom,2.1;linear,0.25;diffusealpha,0;zoom,2.2;); 
	};
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,1;linear,0.15;zoom,1;x,SCREEN_CENTER_X-0;linear,0.15;diffusealpha,0;zoomx,2;zoomy,2.9;linear,0.15;diffusealpha,0;zoomx,2.25;zoomy,2.25;linear,0.2;zoom,2;sleep,1.5;linear,0.25;diffusealpha,0.25;zoom,2.1;linear,0.25;diffusealpha,0;zoom,2.2;); 
	};

	--Left
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,4;linear,0.15;linear,0.15;diffusealpha,0.5;zoomx,2;zoomy,2.9;x,SCREEN_CENTER_X-0;linear,0.15;diffusealpha,0.5;zoomx,3.5;zoomy,3.9;linear,0.15;diffusealpha,0;zoomx,4.5;zoomy,4.9);
	};
	
	
	
	
};

return t
