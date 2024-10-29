local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 19
config.window_close_confirmation = "NeverPrompt"

config.enable_tab_bar = false
config.window_padding = {
	left = 44,
	right = 44,
	top = 24,
	bottom = 24,
}

config.native_macos_fullscreen_mode = true

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)

return config
