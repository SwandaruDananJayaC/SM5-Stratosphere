local t = Def.ActorFrame{};

for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
	local pss = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn);
	local ScoreMode = 'DDR SuperNOVA 2';

	t[#t+1] = Def.Actor {
		Condition = not GAMESTATE:IsDemonstration();
		JudgmentMessageCommand=function(self, params)
			if params.Player == pn then
				if params.TapNoteScore and
				   params.TapNoteScore ~= 'TapNoteScore_Invalid' and
				   params.TapNoteScore ~= 'TapNoteScore_None'
				then
					if pss:GetFailed() ~= true then
						pss:SetScore(Scoring[ScoreMode](params,pss));
					end
				end
			end
		end;
	};
end

t[#t+1] = StandardDecorationFromFile("LifeFrame","LifeFrame")
t[#t+1] = StandardDecorationFromFile("ScoreFrame","ScoreFrame")
t[#t+1] = StandardDecorationFromFileOptional("SongFrame","SongFrame");
t[#t+1] = StandardDecorationFromFileOptional("SongTitle","SongTitle");

-- stage display (normal)
t[#t+1] = StandardDecorationFromFile("StageDisplay","StageDisplay")

-- stage display (course)
if ShowStandardDecoration("StageNumber") then
	for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
		local stageNum = LoadActor(THEME:GetPathG(Var "LoadingScreen", "StageNumber"), pn)
		t[#t+1] = StandardDecorationFromTable( "StageNumber" .. ToEnumShortString(pn), stageNum );
	end
end

--songinfo--
t[#t+1] = LoadFont("Common Fallback Font")..{
	InitCommand=cmd(horizalign,left;x,SCREEN_CENTER_X-170;y,SCREEN_BOTTOM-58-11;zoom,1;draworder,50;strokecolor,color("#000000"));
	OnCommand=cmd(diffusealpha,0;sleep,0.5;linear,0.25;diffusealpha,1);
	OffCommand=cmd(sleep,2;linear,0.15;diffusealpha,0);
	CurrentSongChangedMessageCommand=function(self)
	if   GAMESTATE:GetCurrentStage() ~= 'Stage_Demo' then
		local song = GAMESTATE:GetCurrentSong();
		if song then
		local text = song:GetDisplayFullTitle();
			self:diffusealpha(1);
			self:maxwidth(340);
			self:settext(text);
		end;
		end;
	end;
};
--artist--
t[#t+1] = LoadFont("Common Fallback Font")..{
	InitCommand=cmd(horizalign,left;x,SCREEN_CENTER_X-170;y,SCREEN_BOTTOM-58+11;zoom,0.8;draworder,50;strokecolor,color("#000000"));
	OnCommand=cmd(diffusealpha,0;sleep,0.5;linear,0.25;diffusealpha,1);
	OffCommand=cmd(sleep,2;linear,0.15;diffusealpha,0);
	CurrentSongChangedMessageCommand=function(self)
	if   GAMESTATE:GetCurrentStage() ~= 'Stage_Demo' then
		local song = GAMESTATE:GetCurrentSong();
		if song then
		local text = song:GetDisplayArtist();
			self:diffusealpha(1);
			self:maxwidth(340);
			self:settext(text);
		end;
		end;
	end;
};

return t
