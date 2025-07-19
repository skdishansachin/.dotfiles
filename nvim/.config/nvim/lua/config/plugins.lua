vim.opt.rtp:prepend("~/.config/nvim/lazy/lazy.nvim")

require("lazy").setup({
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp", dependencies = { "hrsh7th/cmp-nvim-lsp" }},
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "EdenEast/nightfox.nvim" },
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }},
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "akinsho/toggleterm.nvim", version = "*", config = "true" },
    { "github/copilot.vim" },
    { "tpope/vim-surround" },
    { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
})
