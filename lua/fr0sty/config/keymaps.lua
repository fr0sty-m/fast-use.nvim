-- [[ Basic Keymaps ]]
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Window management
vim.api.nvim_set_keymap("n", "<leader>wc", "<C-w>c", { noremap = true, silent = true, desc = "Close current window" })
vim.api.nvim_set_keymap("n", "<leader>wq", "<C-w>q", { noremap = true, silent = true, desc = "Quit current window" })
vim.api.nvim_set_keymap("n", "<leader>wv", "<C-w>v", { noremap = true, silent = true, desc = "Split vertically" })
vim.api.nvim_set_keymap("n", "<leader>ws", "<C-w>s", { noremap = true, silent = true, desc = "Split horizontally" })
vim.api.nvim_set_keymap("n", "<leader>w=", "<C-w>=", { noremap = true, silent = true, desc = "Equalize window sizes" })
vim.api.nvim_set_keymap("n", "<leader>w>", "<C-w>>", { noremap = true, silent = true, desc = "Increase window width" })
vim.api.nvim_set_keymap("n", "<leader>w<", "<C-w><", { noremap = true, silent = true, desc = "Decrease window width" })
vim.api.nvim_set_keymap("n", "<leader>w+", "<C-w>+", { noremap = true, silent = true, desc = "Increase window height" })
vim.api.nvim_set_keymap("n", "<leader>w-", "<C-w>-", { noremap = true, silent = true, desc = "Decrease window height" })
vim.api.nvim_set_keymap("n", "<leader>wx", "<C-w>x", { noremap = true, silent = true, desc = "Exchange windows" })
vim.api.nvim_set_keymap("n", "<leader>wr", "<C-w>r", { noremap = true, silent = true, desc = "Rotate windows" })
vim.api.nvim_set_keymap("n", "<leader>w_", "<C-w>_", { noremap = true, silent = true, desc = "Maximize window" })
vim.api.nvim_set_keymap(
	"n",
	"<leader>w|",
	"<C-w>|",
	{ noremap = true, silent = true, desc = "Maximize window vertically" }
)
vim.api.nvim_set_keymap("n", "<leader>wh", "<C-w>h", { noremap = true, silent = true, desc = "Move to left window" })
vim.api.nvim_set_keymap("n", "<leader>wj", "<C-w>j", { noremap = true, silent = true, desc = "Move to below window" })
vim.api.nvim_set_keymap("n", "<leader>wk", "<C-w>k", { noremap = true, silent = true, desc = "Move to above window" })
vim.api.nvim_set_keymap("n", "<leader>wl", "<C-w>l", { noremap = true, silent = true, desc = "Move to right window" })

-- NeoTree
vim.api.nvim_set_keymap(
	"n",
	"<leader>n",
	":Neotree toggle<CR>",
	{ noremap = true, silent = true, desc = "Toggle Neotree" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>f",
	":Neotree focus<CR>",
	{ noremap = true, silent = true, desc = "Focus Neotree" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>c",
	":Neotree close<CR>",
	{ noremap = true, silent = true, desc = "Close Neotree" }
)

vim.api.nvim_set_keymap("n", "<leader>l", ":Lazy<CR>", { noremap = true, silent = true, desc = "Open Plugin Manager" })
vim.api.nvim_set_keymap("n", "<leader>mo", ":Mason<CR>", { noremap = true, silent = true, desc = "[O]pen [M]ason" })
vim.api.nvim_set_keymap(
	"n",
	"<leader>csh",
	":checkhealth<CR>",
	{ noremap = true, silent = true, desc = "[C]heck [S]ystem [H]ealth" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>do",
	":Dashboard<CR>",
	{ noremap = true, silent = true, desc = "[O]pen [D]ashboard" }
)

vim.api.nvim_set_keymap("n", "<C-S-q>", ":qa!<CR>", { noremap = true, silent = true, desc = "Don't save and quit" })

vim.api.nvim_set_keymap("i", "<C-s>", "<ESC>A;<ESC>", { noremap = true, silent = true, desc = "Auto ;" })
