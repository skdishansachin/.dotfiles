vim.g.mapleader = "/" -- leader key

require("config.options")
require("config.plugins")
require("config.lsp")
require("config.keymaps")

vim.cmd("colorscheme carbonfox")

require("toggleterm").setup({
    direction = "horizontal",
    size = 15,
    open_mapping = [[<leader>t]],
    start_in_insert = true,
    insert_mappings = true,
    shade_terminals = true
})

-- Copilot configuration
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { expr = true, silent = true, noremap = true })

