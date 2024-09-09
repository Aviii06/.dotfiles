vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(e)
        local client = vim.lsp.get_client_by_id(e.data.client_id)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
        if client.supports_method('textDocument/implementation') then
            vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
            -- Create a keymap for vim.lsp.buf.implementation
        end
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end,
})


vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        virtual_text = false,
        signs = true,
        underline = true,
        float = true,
    }
)
