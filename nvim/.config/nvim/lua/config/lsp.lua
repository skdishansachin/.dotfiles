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

