require('rose-pine').setup({
    disable_background = true,
    highlight_groups = {
        CursorLine = { bg = 'foam', blend = 10, fg = 'none' },
        TelescopeBorder = { fg = "highlight_high", bg = "none" },
        TelescopeNormal = { bg = "none" },
        TelescopePromptNormal = { bg = "none" },
        TelescopeResultsNormal = { fg = "subtle", bg = "none" },
        TelescopeSelection = { fg = "text", bg = "none" },
        TelescopeSelectionCaret = { fg = "none", bg = "none" },
    },
})

function SetUpMyBG(color)
    -- color = color or "rose-pine-moon"
    color = color or "dracula"
    vim.o.termguicolors = true
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetUpMyBG()
