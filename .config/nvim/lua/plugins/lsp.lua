return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "dcampos/nvim-snippy",
        "dcampos/cmp-snippy",
        "hrsh7th/nvim-cmp",
    },
    config = function ()
        require("mason").setup()
        local cmp = require("cmp")
        cmp.setup({
            snippet = {
                -- REQUIRED - you must specify a snippet engine
                expand = function(args)
                    require('snippy').expand_snippet(args.body) -- For `snippy` users.
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            completion = { completeopt = 'menu,menuone,noinsert'},
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'snippy' }, -- For snippy users.
            })
        })
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require("mason-lspconfig").setup({
            ensure_installed = {
                "lus_ls",
                "rust_analyzer"
            },
            handlers = {
                function (server_name)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end
            }
        })



    end
}
