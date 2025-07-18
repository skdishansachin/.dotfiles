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
