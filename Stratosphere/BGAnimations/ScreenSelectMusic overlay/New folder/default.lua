local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadFont("sys3")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+207);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplayMainTitle());
				self:diffuse(color(GetSongColor(song:GetDisplayMainTitle())));
			else
				self:settext("");
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	};
	LoadFont("sys3")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+207);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				s:settext(GetArtistName(song));
				self:diffuse(color(GetSongColor(song:GetDisplayMainTitle())));
			else
				self:settext("");
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	};
};

return t

