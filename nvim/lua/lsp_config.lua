local navic = require("nvim-navic")
local navbuddy = require("nvim-navbuddy")

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.pyright.setup{
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
        navbuddy.attach(client, bufnr)
    end
}

require'lspconfig'.solargraph.setup{
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
        navbuddy.attach(client, bufnr)
    end
}

require'lspconfig'.standardrb.setup{}

require'lspconfig'.crystalline.setup{}

require"fidget".setup{}
