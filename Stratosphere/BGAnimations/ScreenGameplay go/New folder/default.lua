
local t = Def.ActorFrame{}

t[#t+1] = Def.ActorFrame {
	LoadActor( "Stage Orange BG" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomx,1.5*1.22;zoomy,1.5;blend,('BlendMode_Add'));
		OnCommand=function(self)
		self:diffusealpha(0):zoomy(3)
		:linear(0.264):diffusealpha(1):zoomx(1.5*1.22):zoomy(1.5):sleep(2.05):linear(0.04):zoomy(0):diffusealpha(0);
		end;
		};
	--Left
	LoadActor( "../go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,0;blend,Blend.Add;diffusealpha,0;zoom,1.7;linear,0.01;zoom,1.7;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,1;zoom,3;linear,0.1;diffusealpha,0;zoom,4;);
	};
	--Right
	LoadActor( "../go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,2.5;linear,0.1;zoom,2;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,1;zoom,1.75;linear,0.1;diffusealpha,1;zoom,2;sleep,2;linear,0.1;diffusealpha,0;zoomy,0);
	};
	
	
	--Glow
	--LoadActor( "../go" )..{
	--	OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.283;diffusealpha,0.5;zoom,1.65*1.3;linear,0.017;diffusealpha,0.5;linear,0.033;diffusealpha,0;zoom,1.6*1.3);
	--	OffCommand=cmd(linear,0.4;zoomy,0);
	--};
	
	
	LoadActor( "../go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,3;linear,0.1;zoom,2.5;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,0.55;zoom,1.75;linear,0.1;diffusealpha,0.55;zoom,2;linear,0.25;diffusealpha,0;zoom,2.1;linear,0.5,diffuseaplha,0.55;zoom,2.2;linear,0;diffusealpha,0;zoom,2.2;); 
	};
	LoadActor( "../go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,3;linear,0.1;zoom,2.5;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,0.55;zoom,1.75;linear,0.1;diffusealpha,0.55;zoom,2;sleep,0.5;linear,0.25;diffusealpha,0;zoom,2.1;linear,0,diffuseaplha,0.55;zoom,2.2;linear,0;diffusealpha,0;zoom,2.2;); 
	};
	LoadActor( "../go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,3;linear,0.1;zoom,2.5;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,0.55;zoom,1.75;linear,0.1;diffusealpha,0.55;zoom,2;sleep,1;linear,0.25;diffusealpha,0;zoom,2.1;linear,0,diffuseaplha,0.55;zoom,2.2;linear,0;diffusealpha,0;zoom,2.2;); 
	};
	LoadActor( "../go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,3;linear,0.1;zoom,2.5;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,0.55;zoom,1.75;linear,0.1;diffusealpha,0.55;zoom,2;sleep,1.5;linear,0.25;diffusealpha,0;zoom,2.1;linear,0,diffuseaplha,0.55;zoom,2.2;linear,0;diffusealpha,0;zoom,2.2;); 
	};
};

return t
