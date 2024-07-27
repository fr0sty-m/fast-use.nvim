-- Basic nvim settings
require("fr0sty.config.settings")

-- Basic keymaps
require("fr0sty.config.keymaps")

-- Basic auto commands
require("fr0sty.config.autocommands")

-- Plugins
require("fr0sty.lazy_init")

ui = {
	icons = vim.g.have_nerd_font and {} or {
		cmd = "⌘",
		config = "🛠",
		event = "📅",
		ft = "📂",
		init = "⚙",
		keys = "🗝",
		plugin = "🔌",
		runtime = "💻",
		require = "🌙",
		source = "📄",
		start = "🚀",
		task = "📌",
		lazy = "💤 ",
	},
}
