-- vim.api.nvim_create_augroup("nobg", { clear = true })
-- vim.api.nvim_create_autocmd({ "ColorScheme" }, {
--     desc = "Make all backgrounds transparent",
--     group = "nobg",
--     pattern = "*",
--     callback = function()
--         vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
--         vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
--         vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
--         vim.api.nvim_set_hl(0, 'Normal', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'NormalNC', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Comment', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Constant', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Special', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Identifier', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0,  'Statement', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'PreProc', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Type', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Underlined', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Todo', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'String', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Function', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Conditional', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Repeat', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Operator', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'Structure', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'LineNr', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'NonText', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'SignColumn', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'CursorLine', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'StatusLine', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = "NONE", ctermbg = "NONE"})
--         vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = "NONE", ctermbg = "NONE"})
--         -- etc...
--     end,
-- })
