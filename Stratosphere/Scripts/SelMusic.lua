--Special Features for SuperNOVA styled themes (Inorizushi)

--SelectMusic Positions


--Style Icons
function StylePosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+33
  else
    PosX = SCREEN_CENTER_X-282
  end
  return PosX
end

--Difficulty List
function DiffPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+120
  else
    PosX = SCREEN_CENTER_X-200
  end
  return PosX
end

function DiffBGPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+156
  else
    PosX = SCREEN_CENTER_X-164
  end
  return PosX
end

--Mod Icons
function ModP1PosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+109
  else
    PosX = SCREEN_CENTER_X-211
  end
  return PosX
end

function ModP2PosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+300
  else
    PosX = SCREEN_CENTER_X-20
  end
  return PosX
end

function GradesPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_RIGHT-40
  else
    PosX = SCREEN_CENTER_X+280
  end
  return PosX
end

--BannerStuff
function BannerPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+146
  else
    PosX = SCREEN_CENTER_X-174
  end
  return PosX
end

function BannerFramePosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+152
  else
    PosX = SCREEN_CENTER_X-168
  end
  return PosX
end

function CDPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+250
  else
    PosX = SCREEN_CENTER_X-70
  end
  return PosX
end

function StagePosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+205
  else
    PosX = SCREEN_CENTER_X-115
  end
  return PosX
end

function BPMNumPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+84
  else
    PosX = SCREEN_CENTER_X-236
  end
  return PosX
end

function BPMMeterPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+58
  else
    PosX = SCREEN_CENTER_X-262
  end
  return PosX
end

function RadarPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+194
  else
    PosX = SCREEN_CENTER_X-126
  end
  return PosX
end

function RadarBasePosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_LEFT+196
  else
    PosX = SCREEN_CENTER_X-124
  end
  return PosX
end

function NewSongPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_RIGHT-304
  else
    PosX = SCREEN_CENTER_X+16
  end
  return PosX
end

function WheelPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_RIGHT-166
  else
    PosX = SCREEN_CENTER_X+154
  end
  return PosX
end

function WheelBGPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_RIGHT+60
  else
    PosX = SCREEN_CENTER_X+380
  end
  return PosX
end

function HighlightBGPosX()
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    PosX = SCREEN_RIGHT
  else
    PosX = SCREEN_CENTER_X+320
  end
  return PosX
end

function WheelScrollOn(self)
  local DO = 99
  if ThemePrefs.Get("XStyledMusicSelect") == "Wide Style" then
    self:draworder(DO)
    self:x(156)
  else
    self:draworder(DO)
    self:x(WideScale(156,263))
  end
end
