vim.g.mapleader = " "

require("config.options")
require("config.plugins")
require("config.lsp")
require("config.keymaps")

vim.cmd("colorscheme carbonfox")

-- Copilot configuration
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { expr = true, silent = true, noremap = true })

-- Conform.nvim configuration
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
