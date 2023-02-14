local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed {
    'lua_ls',
}

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "pr", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

    vim.keymap.set("n", "<F2>", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<F1>", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vd", function () vim.diagnostic.open_float() end, opts)
end)

lsp.setup()

-- local cmp = require('cmp') 
-- local cmp_select = { behavior = cmp.SelectBehavior.Select }
-- local cmp_mappings = lsp.defaults.cmp_mappings({
--     ['<A-k>'] = cmp.mapping.select_prev_item(cmp_select),
--     ['<A-j>'] = cmp.mapping.select_next_item(cmp_select),
--     ['<A-Space>'] = cmp.mapping.complete(),
-- })
--
-- lsp.set_preferences({
--     sign_icons = { }
-- })
