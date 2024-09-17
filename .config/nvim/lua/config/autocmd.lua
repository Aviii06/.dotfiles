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

vim.diagnostic.config({
    virtual_text = {
        severity = { min = vim.diagnostic.severity.INFO }  -- don't show virtual text for HINT
    },
    signs = {
        severity = { min = vim.diagnostic.severity.INFO }  -- don't show signs for HINT
    }
})
vim.diagnostic.config( {
    virtual_text = false
})

local ns = vim.api.nvim_create_namespace('CurlineDiag')
vim.opt.updatetime = 100
vim.api.nvim_create_autocmd('LspAttach',{
    callback = function(args)
        vim.api.nvim_create_autocmd('CursorHold', {
            buffer = args.buf,
            callback = function()
                pcall(vim.api.nvim_buf_clear_namespace,args.buf,ns, 0, -1)
                local hi = { 'Error', 'Warn','Info','Hint'}
                local curline = vim.api.nvim_win_get_cursor(0)[1]
                local diagnostics = vim.diagnostic.get(args.buf, {lnum =curline - 1})
                local virt_texts = { { (' '):rep(4) } }
                for _, diag in ipairs(diagnostics) do
                    virt_texts[#virt_texts + 1] = {diag.message, 'Diagnostic'..hi[diag.severity]}
                end
                vim.api.nvim_buf_set_extmark(args.buf, ns, curline - 1, 0,{
                    virt_text = virt_texts,
                    hl_mode = 'combine'
                })
            end
        })
    end
})


require("neo-tree").setup({
    window = {
        position = 'right',
    }
})


require('trouble').setup({
})

