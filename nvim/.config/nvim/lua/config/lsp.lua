local lspconfig = require("lspconfig")
local cmp = require("cmp")
local luasnip = require("luasnip")
local cmp_lsp = require("cmp_nvim_lsp")

local capabilities = cmp_lsp.default_capabilities()

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true })
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
    },
})

lspconfig.clangd.setup({ capabilities = capabilities })

lspconfig.rust_analyzer.setup({
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            proMacro = { enable = false },
            cargo = {
                allFeatures = false,
            },
        },
    },
})
