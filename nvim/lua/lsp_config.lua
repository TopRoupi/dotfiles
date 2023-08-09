local navic = require("nvim-navic")
local navbuddy = require("nvim-navbuddy")
-- require('hover.providers.lsp')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.pyright.setup{
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
        navbuddy.attach(client, bufnr)
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    end
}

require'lspconfig'.solargraph.setup{
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
        navbuddy.attach(client, bufnr)
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    end
}

require'lspconfig'.standardrb.setup{}

require'lspconfig'.crystalline.setup{}

-- require'lspconfig'.nim_langserver.setup{}

require'lspconfig'.nimls.setup{
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
    navbuddy.attach(client, bufnr)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'fk', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  end
}

require"fidget".setup{}
