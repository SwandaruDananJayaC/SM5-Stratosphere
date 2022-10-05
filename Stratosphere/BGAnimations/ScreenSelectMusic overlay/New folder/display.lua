local t = Def.ActorFrame {};

t[#t+1] = LoadFont("_neuropol 36px") .. { 
          InitCommand=cmd(x,SCREEN_CENTER_X-250+32;y,SCREEN_CENTER_Y+11-10;horizalign,right;diffuse,PlayerColor(PLAYER_1);zoom,0.6); 
		  OnCommand=cmd(diffusealpha,0;sleep,0.3;smooth,0.2;diffusealpha,1;);
		  OffCommand=cmd(bouncebegin,0.5;addx,-SCREEN_WIDTH*0.6);
          CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set";playcommand,"Transition";); 
		  TransitionCommand=cmd(finishtweening;diffusealpha,0;smooth,0.2;diffusealpha,1);
		  PlayerJoinedMessageCommand=cmd(playcommand,"Set";diffusealpha,0;smooth,0.3;diffusealpha,1;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1)
			local song = GAMESTATE:GetCurrentSong();
			if song then 
				if stepsP1 ~= nil then
					self:settext(stepsP1:GetMeter())
				else
					self:settext("")
				end
			else
				self:settext("")
			end
          end
};

t[#t+1] = LoadFont("_neuropol 36px") .. { 
          InitCommand=cmd(x,SCREEN_CENTER_X-250+180-32;y,SCREEN_CENTER_Y+11-10;horizalign,left;diffuse,PlayerColor(PLAYER_2);zoom,0.6);
		  OnCommand=cmd(diffusealpha,0;sleep,0.3;smooth,0.2;diffusealpha,1;);
		  OffCommand=cmd(bouncebegin,0.5;addx,-SCREEN_WIDTH*0.6);
          CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set";playcommand,"Transition";); 
		  TransitionCommand=cmd(finishtweening;diffusealpha,0;smooth,0.2;diffusealpha,1);
		  PlayerJoinedMessageCommand=cmd(playcommand,"Set";diffusealpha,0;smooth,0.3;diffusealpha,1;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			stepsP2 = GAMESTATE:GetCurrentSteps(PLAYER_2)
			local song = GAMESTATE:GetCurrentSong();
			if song then 
				if stepsP2 ~= nil then
					self:settext(stepsP2:GetMeter())
				else
					self:settext("")
				end
			else
				self:settext("")
			end
          end
};


return s;
