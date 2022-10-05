function getDifficultyColor(diff)
	local Colors = {
		["Difficulty_Beginner"] = "#2DDAFF",
		["Difficulty_Easy"] = "#FFAE00",
		["Difficulty_Medium"] = "#FF384F",
		["Difficulty_Hard"] = "#00FF00",
		["Difficulty_Challenge"] = "#DE52EC",
		["Difficulty_Edit"] = "#E4E2E5",
	};
	return Colors[diff] or "#FFFFFF";
end
