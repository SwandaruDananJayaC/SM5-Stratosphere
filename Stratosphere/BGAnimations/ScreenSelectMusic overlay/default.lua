local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "display" )..{}
};

t[#t+1] = Def.ActorFrame {
	LoadFont("_shared2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-181);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplayFullTitle());
				self:diffuse(color(GetSongColor(song:GetDisplayMainTitle())));
			else
				self:settext("");
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	};
};

t[#t+1] = Def.ActorFrame {
	LoadFont("_shared2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-168);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplayArtist());
				self:diffuse(color(GetSongColor(song:GetDisplayMainTitle())));
			else
				self:settext("");
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	};
};

return t

