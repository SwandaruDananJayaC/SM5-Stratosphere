local t = Def.ActorFrame {};
--Course Name
t[#t+1] = LoadFont("_neuropol 36px") .. {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-92;maxwidth,SCREEN_WIDTH);
	SetCommand=function(self)
		local course = GAMESTATE:GetCurrentCourse();
		if course then
			if GroupNameChange then
				self:settext(ChangeGroupName(course:GetDisplayFullTitle()));
			else
				self:settext(course:GetDisplayFullTitle());
			end;
		end;
	end;
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	OffCommand=cmd();
};

--Course Contents
t[#t+1] = LoadActor("courselist")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-304;y,SCREEN_CENTER_Y);
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "selcours" )..{
		OnCommand=cmd(Center;addx,-2;addy,-216);
	}
};

return t