local lspconfig = require("lspconfig")

lspconfig.clangd.setup({})

local cmp = require("cmp")

cmp.setup({
    mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true })
    },
    sources = {
        { name = "nvim_lsp" },
    },
})

-- Zig language server setup
vim.g.zig_fmt_autosave = 0
vim.g.zig_fmt_parse_errors = 0

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.zig",
    callback = function(ev)
        vim.lsp.buf.format()
    end,
})

lspconfig.zls.setup({
    cmd = { "zls" },
    settings = {
        zls = {
            semantic_tokens = "partial",
            zig_exe_path = "/usr/bin/zig",
        }
    }
})
