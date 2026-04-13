local hour = tonumber(os.date("%H"))

-- Set your preferred day time and night time
local day_time = 7
local night_time = 18

-- Set your preferred light and colorscheme
local light_theme = "onelight"
local dark_theme = "onedark_dark"

-- Colorscheme repository
local repo = "olimorris/onedarkpro.nvim"

local selected_theme = (hour >= day_time and hour < night_time) and light_theme or dark_theme

return {
	repo,
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = selected_theme,
		},
	},
}
