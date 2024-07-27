vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	desc = "Auto-remove trailing whitespace when saving files",
-- 	group = vim.api.nvim_create_augroup("remove-trailing-whitespace", { clear = true }),
-- 	callback = function()
-- 		vim.cmd(":%s/\\s\\+$//e")
-- 	end,
-- })

vim.api.nvim_create_autocmd("BufWritePre", {
	desc = "Auto-format files when saving",
	group = vim.api.nvim_create_augroup("autoformat", { clear = true }),
	callback = function()
		vim.lsp.buf.format()
	end,
})

vim.api.nvim_create_autocmd("BufRead", {
	desc = "Show a warning when editing a file that's not in the working directory",
	group = vim.api.nvim_create_augroup("outside-working-dir", { clear = true }),
	callback = function()
		local cwd = vim.fn.getcwd()
		local file_path = vim.api.nvim_buf_get_name(0)
		if not string.find(file_path, cwd) then
			vim.notify("Editing file outside of working directory: " .. file_path, vim.log.levels.WARN)
		end
	end,
})
