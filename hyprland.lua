--    .-============================-.
--  .'   *     .     *     .     *    '.
-- /     ____ ___ _   _ _   _ ____      \
-- |    |  _ \_ _| \ | | | |  _ \     |
-- |    | |_) | ||  \| | | | | |_) |    |
-- |    |  __/| || |\  | |_| |  __/     |
-- |    |_|  |___|_| \_|\___/|_|        |
-- \                                    /
--  '.    *     .     *     .    *    .'
--    '-============================-'

-- Theme-only Hyprland presentation for Omarchy Pinup.
-- Keep this file focused on style: color, depth, motion, and polish.

local colors = {
	paper = "eee1c3",
	ink = "190403",
	tan = "b59b72",
	accent = "004584",
	focus = "2865b6",
	burgundy = "6d2e52",
}

local activeBorderColor = {
	colors = {
		"rgba(" .. colors.accent .. "ee)",
		"rgba(" .. colors.focus .. "f2)",
		"rgba(" .. colors.burgundy .. "d6)",
	},
	angle = 38,
}

local inactiveBorderColor = "rgba(" .. colors.tan .. "a8)"
local groupInactiveBorderColor = "rgba(" .. colors.tan .. "82)"
local activeShadowColor = "rgba(" .. colors.ink .. "42)"
local inactiveShadowColor = "rgba(" .. colors.ink .. "24)"

hl.config({
	general = {
		gaps_in = 8,
		gaps_out = 18,
		border_size = 2,
		col = {
			active_border = activeBorderColor,
			inactive_border = inactiveBorderColor,
		},
	},

	group = {
		col = {
			border_active = activeBorderColor,
			border_inactive = groupInactiveBorderColor,
		},
		groupbar = {
			enabled = true,
			blur = true,
			gradients = true,
			stacked = false,
			height = 25,
			gaps_in = 5,
			gaps_out = 0,
			indicator_height = 2,
			indicator_gap = 4,
			font_family = "monospace",
			font_size = 12,
			font_weight_active = "bold",
			font_weight_inactive = "normal",
			text_color = "rgb(" .. colors.ink .. ")",
			text_color_inactive = "rgba(" .. colors.ink .. "aa)",
			col = {
				active = {
					colors = {
						"rgba(" .. colors.paper .. "ec)",
						"rgba(" .. colors.focus .. "40)",
					},
					angle = 38,
				},
				inactive = "rgba(" .. colors.paper .. "b8)",
				locked_active = "rgba(" .. colors.burgundy .. "45)",
				locked_inactive = "rgba(" .. colors.tan .. "55)",
			},
			gradient_rounding = 10,
			gradient_rounding_power = 2,
		},
	},

	decoration = {
		rounding = 12,
		rounding_power = 2,
		-- active_opacity = 0.999,
		inactive_opacity = 0.97,
		fullscreen_opacity = 1.0,
		dim_inactive = true,
		dim_strength = 0.045,
		dim_special = 0.10,

		blur = {
			enabled = true,
			size = 5,
			passes = 3,
			special = true,
			popups = true,
			input_methods = true,
			ignore_opacity = true,
			new_optimizations = true,
			xray = false,
			noise = 0.04,
			contrast = 0.88,
			brightness = 0.96,
			vibrancy = 0.04,
			vibrancy_darkness = 0.22,
			popups_ignorealpha = 0.55,
			input_methods_ignorealpha = 0.55,
		},

		shadow = {
			enabled = true,
			range = 20,
			render_power = 3,
			offset = "2 3",
			color = activeShadowColor,
			color_inactive = inactiveShadowColor,
		},
	},

	animations = {
		enabled = true,
	},
})

hl.curve("pinupSnap", { type = "bezier", points = { { 0.18, 0.92 }, { 0.22, 1.0 } } })
hl.curve("pinupFloat", { type = "bezier", points = { { 0.24, 0.82 }, { 0.20, 1.0 } } })
hl.curve("pinupFade", { type = "bezier", points = { { 0.38, 0.0 }, { 0.14, 1.0 } } })
hl.curve("pinupSlide", { type = "bezier", points = { { 0.20, 0.96 }, { 0.30, 1.0 } } })

hl.animation({ leaf = "global", enabled = true, speed = 8, bezier = "pinupSnap" })
hl.animation({ leaf = "windows", enabled = true, speed = 5, bezier = "pinupFloat" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 5, bezier = "pinupSnap", style = "popin 12%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4, bezier = "pinupFade", style = "popin 82%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, bezier = "pinupFloat" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "pinupFade" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 12, bezier = "linear", style = "once" })
hl.animation({ leaf = "fade", enabled = true, speed = 4, bezier = "pinupFade" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4, bezier = "pinupFade" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 3, bezier = "pinupFade" })
hl.animation({ leaf = "layers", enabled = true, speed = 5, bezier = "pinupSlide", style = "slidefade" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5, bezier = "pinupSnap", style = "slidefade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 4, bezier = "pinupFade", style = "fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "pinupSlide", style = "slidefade" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4, bezier = "pinupSlide", style = "slidevert" })

hl.window_rule({
	name = "pinup-floating-polish",
	rounding = 16,
	border_size = 2,
	opacity = "0.985 0.94",
	match = {
		float = true,
	},
})

--  ______   __       ______
-- /_____/\ /_/\     /_____/\
-- \:::_ \ \\:\ \    \:::_ \ \
--  \:\ \ \ \\:\ \    \:\ \ \ \
--   \:\ \ \ \\:\ \____\:\ \ \ \
--    \:\_\ \ \\:\/___/\\:\/.:| |
--  ___\_____\/_\_____\/ \____/_/  ______    _______   ______
-- /________/\/_____/\ /_______/\ /_____/\ /_______/\ /_____/\
-- \__.::.__\/\:::_ \ \\::: _  \ \\:::_ \ \\::: _  \ \\:::_ \ \
--   /_\::\ \  \:\ \ \ \\::(_)  \/_\:\ \ \ \\::(_)  \/_\:\ \ \ \
--   \:.\::\ \  \:\ \ \ \\::  _  \ \\:\ \ \ \\::  _  \ \\:\ \ \ \
--    \: \  \ \  \:\_\ \ \\::(_)  \ \\:\_\ \ \\::(_)  \ \\:\_\ \ \
--     \_____\/   \_____\/ \_______\/ \_____\/ \_______\/ \_____\/
