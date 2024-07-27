return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			local function count_plugins()
				local plugins = require("lazy").stats().loaded
				return plugins
			end

			require("dashboard").setup({
				theme = "doom", -- or "doom", "onedark", etc.
				config = {
					weekNumbers = true,
					shortcutType = "number", -- or "symbol"
					header = {
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						"  ███████╗██████╗  █████╗  ██████╗████████╗██╗   ██╗",
						"  ██╔════╝██╔══██╗██╔══██╗██╔════╝╚══██╔══╝╚██╗ ██╔╝",
						"  █████╗  ██████╔╝██║  ██║╚█████╗    ██║    ╚████╔╝ ",
						"  ██╔══╝  ██╔══██╗██║  ██║ ╚═══██╗   ██║     ╚██╔╝  ",
						"  ██║     ██║  ██║╚█████╔╝██████╔╝   ██║      ██║   ",
						"  ╚═╝     ╚═╝  ╚═╝ ╚════╝ ╚═════╝    ╚═╝      ╚═╝   ",
						"",
						"",
						"",
						"",
						"",
						"",
					},
					header_padding = 5,
					center = {
						{
							icon = "  ",
							desc = "Old Files                       ",
							action = "Telescope oldfiles",
							key = "f",
						},
						{
							icon = "  ",
							desc = "New File                        ",
							action = "enew",
							key = "n",
						},
						{
							icon = "  ",
							desc = "Find File                       ",
							action = "Telescope find_files",
							key = "<leader>sf",
						},
						{
							icon = "☰  ",
							desc = "Open Tree                       ",
							action = "Neotree",
							key = "<leader>n",
						},
						{
							icon = "  ",
							desc = "Plugin Manager                      ",
							action = "Lazy",
							key = "<leader>l",
						},
						{
							icon = "★  ",
							desc = "Mason                       ",
							action = "Mason",
							key = "<leader>mo",
						},
						{
							icon = "♥  ",
							desc = "Check Health                        ",
							action = "checkhealth",
							key = "<leader>csh",
						},
						{
							icon = "⬛️  ",
							desc = "Open Dashboard                      ",
							action = "Dashboard",
							key = "<leader>do",
						},
						{
							icon = "╳  ",
							desc = "Quit                        ",
							action = "qa!",
							key = "<C-S-q>",
						},
					},
					footer = {
						"Fr0sty Neovim loaded successfully.",
						"There is " .. count_plugins() .. " installed successfully.",
					},
				},
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
}

