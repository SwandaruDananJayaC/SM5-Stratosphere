local Crstext = THEME:GetString("MusicWheel","CustomItemCrsText");

return Def.ActorFrame{
 	InitCommand=function(s) s:xy(_screen.cx,_screen.cy-190):diffusealpha(1):draworder(1) end,
  OnCommand=function(s) s:zoomy(0):sleep(0.2):bounceend(0.175):zoomy(1) end,
	OffCommand=function(s) s:bouncebegin(0.175):zoomy(0) end,
  LoadActor("BannerFrame");
	Def.Banner{
    InitCommand=function(s) s:y(20) end,
    SetCommand=function(self,params)
      self:finishtweening()
      local song = GAMESTATE:GetCurrentSong();
      local so = GAMESTATE:GetSortOrder();
      local mw = SCREENMAN:GetTopScreen():GetChild("MusicWheel")
			if song then
				if song:HasBanner() then
					self:LoadBackground(song:GetBannerPath());
          self:zoomtowidth(478):zoomtoheight(150)
          self:croptop(0):cropbottom(0)
				elseif song:HasJacket() then
          self:LoadBackground(song:GetJacketPath());
          self:zoomto(478,478);
          self:croptop(0.345):cropbottom(0.345)
        elseif song:HasBackground() then
          self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
          self:zoomto(478,478)
          self:croptop(0.345):cropbottom(0.345)
				else
          self:Load(THEME:GetPathG("","Common fallback banner"));
          self:zoomto(478,150);
          self:croptop(0):cropbottom(0)
				end;
      elseif mw:GetSelectedType('WheelItemDataType_Section')  then
        self:Load(jacketset(self))
        self:zoomto(478,478);
        self:croptop(0.345):cropbottom(0.345)
      else
        self:Load(THEME:GetPathG("","Common fallback banner"));
        self:zoomto(478,150);
        self:croptop(0):cropbottom(0)
      end;
		end;
    CurrentSongChangedMessageCommand=cmd(queuecommand,"Set");
  };
  Def.Sprite{
    InitCommand=function(s) s:y(20) end,
    SetCommand=function(self)
      local song = GAMESTATE:GetCurrentSong();
      local so = GAMESTATE:GetSortOrder();
      local mw = SCREENMAN:GetTopScreen():GetChild("MusicWheel")
      if not song then
        if mw:GetSelectedType() == 'WheelItemDataType_Random' then
          self:Load(THEME:GetPathG("","_banners/Random"))
          self:diffusealpha(1);
          self:zoomto(478,150);
          self:croptop(0):cropbottom(0)
        elseif mw:GetSelectedType() == 'WheelItemDataType_Roulette' then
          self:Load(THEME:GetPathG("","_banners/Random"))
          self:diffusealpha(1);
          self:zoomto(478,150);
          self:croptop(0):cropbottom(0)
        elseif mw:GetSelectedType() == 'WheelItemDataType_Custom' then
          self:Load(THEME:GetPathG("","MusicWheelItem Custom OverPart/CoverFlow/COURSE.png"))
          self:diffusealpha(1);
          self:zoomto(478,478)
          self:croptop(0.345):cropbottom(0.345)
        else
          self:diffusealpha(0)
        end;
      else
        self:diffusealpha(0)
      end;
    end;
    CurrentSongChangedMessageCommand=cmd(queuecommand,"Set");
  };
  Def.Quad{
    InitCommand=function(s) s:setsize(478,30):xy(239,96):align(1,1):diffuseleftedge(color("1,1,1,0.3")) end,
  },
  Def.BitmapText{
    Font="_avenirnext lt pro bold 20px",
    InitCommand=function(s) s:halign(1):maxwidth(450):xy(234,80):diffuse(Color.Black):strokecolor(Color.White) end,
    SetCommand=function(s)
      local song = GAMESTATE:GetCurrentSong();
      local so = GAMESTATE:GetSortOrder();
      local mw = SCREENMAN:GetTopScreen():GetChild("MusicWheel")
      if song then
        s:settext(song:GetDisplayFullTitle())
      elseif mw:GetSelectedType() == "WheelItemDataType_Section" then
        local group = mw:GetSelectedSection()
        if so == "SortOrder_Group" then
          s:settext(group)
        else
          s:settext("")
        end
      else
        s:settext("")
      end
    end,
    CurrentSongChangedMessageCommand=cmd(queuecommand,"Set");
  },
  LoadFont("_avenirnext lt pro bold 46px")..{
		InitCommand=function(s) s:diffusealpha(1):maxwidth(200):diffusebottomedge(color("#d8d8d8")):diffusetopedge(color("#8c8c8c")):strokecolor(Color.Black) end,
    SetMessageCommand=function(self,params)
      local mw = SCREENMAN:GetTopScreen():GetChild("MusicWheel")
      local so = GAMESTATE:GetSortOrder();
      if mw:GetSelectedType() == "WheelItemDataType_Section" then
        local group = mw:GetSelectedSection()
			  if so == "SortOrder_Genre" then
			  	self:settext(group)
			  else
			  	self:settext("")
			  end;
		  else
			  self:settext("")
      end
    end,
    CurrentSongChangedMessageCommand=cmd(queuecommand,"Set");
	};
};
