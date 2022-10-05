local playMode = GAMESTATE:GetPlayMode()
if playMode ~= 'PlayMode_Regular' and playMode ~= 'PlayMode_Rave' and playMode ~= 'PlayMode_Battle' then
	curStage = playMode;
end;
local sStage = GAMESTATE:GetCurrentStage();
local tRemap = {
	Stage_1st		= 1,
	Stage_2nd		= 2,
	Stage_3rd		= 3,
	Stage_4th		= 4,
	Stage_5th		= 5,
	Stage_6th		= 6,
};

if tRemap[sStage] == PREFSMAN:GetPreference("SongsPerPlay") then
	sStage = "Stage_Final";
else
	sStage = sStage;
end;

local t = Def.ActorFrame {};

--DOORS CLOSE----------------
t[#t+1] =Def.ActorFrame{
		LoadActor("BackgroundArt")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(FullScreen;diffusealpha,0;decelerate,0.3;diffusealpha,1;sleep,8.1;accelerate,0.3;diffusealpha,0);
	};
	LoadActor("top_stage")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,-52);
		OnCommand=cmd(linear,0.25;y,72);
	};
	LoadActor("bottom_stage")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+50);
		OnCommand=cmd(linear,0.25;y,SCREEN_BOTTOM-27);
	};

};


t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:y(SCREEN_CENTER_Y);
	end;

	-- Door sound
	-- LoadActor(THEME:GetPathS( "", "_Door" ) ) .. {
		-- StartTransitioningCommand=function(self)
			-- self:play();
		-- end;
	-- };

	--- Flash SONG BANNER  sound------
	LoadActor("SoundStage") .. {
	};

	

};

if not GAMESTATE:IsCourseMode() then

--song jacket--
t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(playcommand,'Set';Center;diffusealpha,0;zoom,4;sleep,0.9;linear,0.2;diffusealpha,1;zoom,1;sleep,3;diffusealpha,1);
	Def.Sprite {
		SetCommand=function(self)
		local song = GAMESTATE:GetCurrentSong();
			if song:HasJacket() then
				self:LoadBackground(song:GetJacketPath());
				self:setsize(480,480);
			elseif song:HasBanner() then
				self:LoadFromSongBanner(GAMESTATE:GetCurrentSong());
				self:setsize(480,480);
			else
				self:Load(THEME:GetPathG("","Common fallback jacket"));
				self:setsize(480,480);
			end;
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(playcommand,'Set';Center;diffusealpha,0;zoom,4;sleep,0.95;linear,0.2;diffusealpha,1;zoom,1;decelerate,0.7;diffusealpha,0;zoom,1.15);
	Def.Sprite {
		SetCommand=function(self)
		self:blend('BlendMode_Add');
		local song = GAMESTATE:GetCurrentSong();
			if song:HasJacket() then
				self:LoadBackground(song:GetJacketPath());
				self:setsize(480,480);
			elseif song:HasBanner() then
				self:LoadFromSongBanner(GAMESTATE:GetCurrentSong());
				self:setsize(480,480);
			else
				self:Load(THEME:GetPathG("","Common fallback jacket"));
				self:setsize(480,480);
			end;
		end;
	};
};
else
t[#t+1] = LoadActor("CourseDisplay");
end;
t[#t+1] = LoadActor("StageDisplay");


return t