local sBannerPath = THEME:GetPathG("Common", "fallback jacket");
local sJacketPath = THEME:GetPathG("Common", "fallback jacket");
local bAllowJackets = true
local song;
local group;
--main backing
local t = Def.ActorFrame {
		
--border default
-- LoadActor(THEME:GetPathG("MusicWheelItem Song","NormalPart/Borders/default.png"))..{
		-- InitCommand=cmd(scaletoclipped,250,248);
		-- };
-- Def.Sprite{
	-- InitCommand=cmd(scaletoclipped,250,248);
	-- SetMessageCommand=function(self,params)
	-- local style = GAMESTATE:GetCurrentStyle():GetStyleType();
	-- local song = params.Song;
	-- local pf1 = PROFILEMAN:GetProfile(PLAYER_1);
	-- local staw1 = STATSMAN:GetCurStageStats(params.Song):GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
	-- local pssp2 = STATSMAN:GetCurStageStats(params.Song):GetPlayerStageStats("PlayerNumber_P2")
		-- if song then
		
			-- if not PROFILEMAN:IsSongNew(params.Song) then
			-- self:Load(THEME:GetPathG("MusicWheelItem Song","NormalPart/Borders/cleared.png"));
			-- self:diffusealpha(0);
			-- self:draworder(1);
			-- else
			-- self:diffusealpha(0);
			-- end;
		-- end;
	-- end;
-- };
		
--banner frame
--[[	Def.Quad{
		InitCommand=cmd(shadowlengthx,0;shadowlengthy,2);
		SetMessageCommand=function(self, params)
			local song = params.Song;
		if song then
		local group_colors= {
				["DanceDanceRevolution 1stMIX"]= "#99FF66",
				["DanceDanceRevolution 2ndMIX"]= "#FF6633",
				["DanceDanceRevolution 3rdMIX"]= "#FFFF66",
				["DanceDanceRevolution 4thMIX"]= "#CC66FF",
				["DanceDanceRevolution 5thMIX"]= "#66CCFF",
				["DanceDanceRevolution 6thMIX MAX"]= "#FF9900",
				["DanceDanceRevolution 7thMIX MAX2"]= "#FF3333",
				["DanceDanceRevolution 8thMIX EXTREME"]= "#00CC33",
				["DanceDanceRevolution SuperNOVA"]= "#CC0000",
				["DanceDanceRevolution SuperNOVA2"]= "#33CCFF",
				["DanceDanceRevolution X"]= "#FF9933",
				["DanceDanceRevolution X2"]= "#FF33CC",
				["DanceDanceRevolution X3"]= "#5970b3",
				["DDR 2013"]= "#59b386",
				["DDR 2014"]= "#59b386",
				["Next Generation"]= "#FFFFFF",
				["NG Extra 1"]= "#FF0000",
				["NG Extra 2"]= "#FF0000",
			}
			local color_str= group_colors[song:GetGroupName()] or "#FFFFFF"
			self:diffuse(color(color_str))
			self:diffusealpha(1)
			self:setsize(240,240);
		end;
	end;
};--]]
--title part
	-- LoadActor("title")..{
	-- InitCommand=cmd(zoomy,0.815;zoomx,0.78;y,1);
	-- };
-- Def.Quad {
	-- InitCommand=cmd(setsize,223,223;diffuse,color("#000000"));
	-- };
--banner
	Def.Sprite {
		Name="Banner";
		InitCommand=cmd(scaletoclipped,220,220);
		BannerCommand=cmd(scaletoclipped,220,220);
		JacketCommand=cmd(scaletoclipped,220,220);
		SetMessageCommand=function(self,params)
			local Song = params.Song;
			local Course = params.Course;
			if Song then
				if ( Song:GetJacketPath() ~=  nil ) and ( bAllowJackets ) then
					self:Load( Song:GetJacketPath() );
					self:playcommand("Jacket");
				elseif ( Song:GetBannerPath() ~= nil ) then
					self:Load( Song:GetBannerPath() );
					self:playcommand("Banner");
				elseif ( Song:GetBackgroundPath() ~= nil ) and ( bAllowJackets ) then
					self:Load( Song:GetBackgroundPath() );
					self:playcommand("Jacket");
				else
				  self:Load( bAllowJackets and sBannerPath or sJacketPath );
				  self:playcommand( bAllowJackets and "Jacket" or "Banner" );
				end;
			elseif Course then
				if ( Course:GetBackgroundPath() ~= nil ) and ( bAllowJackets ) then
					self:Load( Course:GetBackgroundPath() );
					self:playcommand("Jacket");
				elseif ( Course:GetBannerPath() ~= nil ) then
					self:Load( Course:GetBannerPath() );
					self:playcommand("Banner");
				else
					self:Load( sJacketPath );
					self:playcommand( bAllowJackets and "Jacket" or "Banner" );
				end
			else
				self:Load( bAllowJackets and sJacketPath or sBannerPath );
				self:playcommand( bAllowJackets and "Jacket" or "Banner" );
			end;
		end;
	};
	
	Def.Sprite {
		Name="BannerReflection";
		InitCommand=cmd(scaletoclipped,220,220;y,220;rotationx,180;croptop,0.5;diffusealpha,0.6;diffusetopedge,1,1,1,0);
		BannerCommand=cmd(scaletoclipped,220,220);
		JacketCommand=cmd(scaletoclipped,220,220);
		SetMessageCommand=function(self,params)
			local Song = params.Song;
			local Course = params.Course;
			if Song then
				if ( Song:GetJacketPath() ~=  nil ) and ( bAllowJackets ) then
					self:Load( Song:GetJacketPath() );
					self:playcommand("Jacket");
				elseif ( Song:GetBannerPath() ~= nil ) then
					self:Load( Song:GetBannerPath() );
					self:playcommand("Banner");
				elseif ( Song:GetBackgroundPath() ~= nil ) and ( bAllowJackets ) then
					self:Load( Song:GetBackgroundPath() );
					self:playcommand("Jacket");
				else
				  self:Load( bAllowJackets and sBannerPath or sJacketPath );
				  self:playcommand( bAllowJackets and "Jacket" or "Banner" );
				end;
			elseif Course then
				if ( Course:GetBackgroundPath() ~= nil ) and ( bAllowJackets ) then
					self:Load( Course:GetBackgroundPath() );
					self:playcommand("Jacket");
				elseif ( Course:GetBannerPath() ~= nil ) then
					self:Load( Course:GetBannerPath() );
					self:playcommand("Banner");
				else
					self:Load( sJacketPath );
					self:playcommand( bAllowJackets and "Jacket" or "Banner" );
				end
			else
				self:Load( bAllowJackets and sJacketPath or sBannerPath );
				self:playcommand( bAllowJackets and "Jacket" or "Banner" );
			end;
		end;
	};
--new song
	-- LoadActor("NEW") .. {
		-- InitCommand=cmd(y,-157.5;finishtweening;draworder,1;zoom,1;bob;effectmagnitude,0,5,0);
		-- SetCommand=function(self,param)
			-- if param.Song then
				-- if PROFILEMAN:IsSongNew(param.Song) then
					-- self:visible(true);
				-- else
					-- self:visible(false);
				-- end
			-- else
				-- self:visible(false);
			-- end
		-- end;
	-- };
	-- LoadFont("_helvetica-bold 24px")..{
		-- InitCommand=cmd(y,145;zoomx,1;maxwidth,235;diffuse,Color("White");strokecolor,color("0.15,0.15,0.0,0.9"));
		-- SetCommand=function(self,params)
			-- local song = params.Song;
			-- local course = params.Course;
			-- local tit="";
			-- if song and not course then
				-- tit=song:GetDisplayFullTitle();
			-- elseif course and not song then
				-- tit=course:GetDisplayFullTitle();
			-- end;
			-- self:stoptweening();
			-- self:settextf("%s",tit);
		-- end;
	-- };
	

};
return t;