local t = Def.ActorFrame{};

--go
t[#t+1] = Def.ActorFrame {
	LoadActor( 'scene_choice_stage_bg' ) .. {
		InitCommand=cmd(Center;zoomy,0;diffusealpha,1;);
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();	
			
			if song then
				
				local start = song:GetFirstBeat();
				local delay = song:GetTimingData():GetElapsedTimeFromBeat(0.1);
				local delay2 = song:GetTimingData():GetElapsedTimeFromBeat(3);
				local delay3 = song:GetTimingData():GetElapsedTimeFromBeat(0.75);
				if delay <= 0  then
					(cmd(linear,0.1;zoomy,0;diffusealpha,0))(self)
			
				else
					if song:GetDisplayFullTitle() == "Over The “Period”" then
					(cmd(sleep,delay;linear,0.1;zoomx,1;zoomy,1.5;linear,0.1;zoomy,1;sleep,delay3;linear,0.1;zoomy,0;))(self)
					else
					(cmd(sleep,delay;linear,0.1;zoomx,1;zoomy,1.5;linear,0.1;zoomy,1;sleep,delay2;linear,0.1;zoomy,0;))(self)
					end
				end
			end
		end;
	};
	
	
	
	LoadActor( 'go' )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-0;y,SCREEN_CENTER_Y+5;zoomx,0;zoomy,0;);
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				local start = song:GetFirstBeat();
				local delay = song:GetTimingData():GetElapsedTimeFromBeat(0.1);
				local delay2 = song:GetTimingData():GetElapsedTimeFromBeat(3);
				local delay3 = song:GetTimingData():GetElapsedTimeFromBeat(0.75);	
				if delay <= 0  then
					(cmd(linear,0.1;zoom,0;diffusealpha,0))(self)
				else
					if song:GetDisplayFullTitle() == "Over The “Period”" then
					(cmd(sleep,delay;zoom,0;linear,0.2;diffusealpha,1;zoomx,0.9;zoomy,1;linear,0.05;diffusealpha,1;zoomx,1;zoomy,1.3;linear,0.1;diffusealpha,1;zoomx,1.1;zoomy,1.1;linear,0.1;zoomx,1;zoomy,1;linear,0.15;zoomx,0.9;zoomy,0.9;sleep,delay3-0.4;linear,0.1;zoomy,0;))(self)
					else
					
					(cmd(sleep,delay;zoom,0;linear,0.2;diffusealpha,1;zoomx,0.9;zoomy,1;linear,0.05;diffusealpha,1;zoomx,1;zoomy,1.3;linear,0.1;diffusealpha,1;zoomx,1.1;zoomy,1.1;linear,0.1;zoomx,1;zoomy,1;linear,0.15;zoomx,0.9;zoomy,0.9;sleep,delay2-0.4;linear,0.1;zoomy,0;))(self)
					
					end
				end
			end
		end;
	};	




	LoadActor( 'go' )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-0;y,SCREEN_CENTER_Y+5;zoomx,0;zoomy,0;blend,Blend.Add;);
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				local start = song:GetFirstBeat();
				local delay = song:GetTimingData():GetElapsedTimeFromBeat(0.1);
				if delay <= 0  then
					delay = 0
				else
					
					(cmd(sleep,delay;zoom,2.15;linear,0.2;diffusealpha,1;zoomx,0.9;zoomy,1;linear,0.05;diffusealpha,1;zoomx,1;zoomy,1.3;linear,0.1;diffusealpha,0.3;zoomx,2.5;zoomy,2.3;linear,0.2;diffusealpha,0;zoomx,4;zoomy,3.45))(self)
				end
			end
		end;
	};
	
	
};

return t