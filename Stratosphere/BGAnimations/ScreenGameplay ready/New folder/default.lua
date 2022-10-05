--[[return Def.ActorFrame {
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y+1;glow,color("1,1,1,0");zoomy,0;zoomx,1.34;sleep,0.0000;accelerate,0.133;zoomy,0.807;zoomx,1;decelerate,0.066;zoomy,1.192;glow,color("1,1,1,0.5");sleep,0.016;accelerate,0.033;glow,color("1,1,1,0");zoomy,1);
		OnCommand=cmd(sleep,0.907;diffusealpha,0);
	};
}]]--

local t = Def.ActorFrame{}


t[#t+1] = Def.ActorFrame {
	LoadActor( "Stage Blue BG" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoom,1;blend,('BlendMode_Add'));
		OnCommand=function(self)
		self:diffusealpha(0):zoom(1)
		:linear(0.264):diffusealpha(0.6):zoom(2.05):sleep(2.05):linear(0):zoomy(0):diffusealpha(0);
		end;
		};

	--Left
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,0;blend,Blend.Add;diffusealpha,0;zoom,1.7;linear,0.1;zoom,1.7;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,1;zoom,3;linear,0.1;diffusealpha,0;zoom,4;);
	};
	--Right
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,2.5;linear,0.1;zoom,2;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,1;zoom,1.75;linear,0.1;diffusealpha,1;zoom,2;sleep,2;linear,0;diffusealpha,0;zoom,1.5*1.5);
	};
	
	
	--Glow
	--LoadActor( "../ready" )..{
	--	OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.283;diffusealpha,0.5;zoom,1.65*1.3;linear,0.017;diffusealpha,0.5;linear,0.033;diffusealpha,0;zoom,1.6*1.3);
	--	OffCommand=cmd(linear,0.4;zoomy,0);
	--};
	
	
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,3;linear,0.1;zoom,2.5;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,0.55;zoom,1.75;linear,0.1;diffusealpha,0.55;zoom,2;linear,0.25;diffusealpha,0;zoom,2.1;linear,0.5,diffuseaplha,0.55;zoom,2.2;linear,0;diffusealpha,0;zoom,2.2;); 
	};
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,3;linear,0.1;zoom,2.5;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,0.55;zoom,1.75;linear,0.1;diffusealpha,0.55;zoom,2;sleep,0.5;linear,0.25;diffusealpha,0;zoom,2.1;linear,0,diffuseaplha,0.55;zoom,2.2;linear,0;diffusealpha,0;zoom,2.2;); 
	};
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,3;linear,0.1;zoom,2.5;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,0.55;zoom,1.75;linear,0.1;diffusealpha,0.55;zoom,2;sleep,1;linear,0.25;diffusealpha,0;zoom,2.1;linear,0,diffuseaplha,0.55;zoom,2.2;linear,0;diffusealpha,0;zoom,2.2;); 
	};
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,3;linear,0.1;zoom,2.5;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,0.55;zoom,1.75;linear,0.1;diffusealpha,0.55;zoom,2;sleep,1.5;linear,0.25;diffusealpha,0;zoom,2.1;linear,0,diffuseaplha,0.55;zoom,2.2;linear,0;diffusealpha,0;zoom,2.2;); 
	};
};

return t
