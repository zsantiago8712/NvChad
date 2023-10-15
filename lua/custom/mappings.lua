local M = {}

M.disabled = {}

M.lsp = {
    n = {
        ["<leader>lf"] = {

            function()
                require("conform").format {
                    lsp_fallback = true,
                    async = false,
                    timeeout_ms = 500,
                }
            end,
            "format with conform",
        },
    },
}

M.telescope = {
    n = {
        ["<leader>ft"] = { ": TodoTelescope<CR>", "Find TODO commenst" },
    },
}

M.custom = {
    v = {
        ["<C-j>"] = { ":m '>+1<CR>gv=gv", "Move line down" },
        ["<C-k>"] = { ":m '<-2<CR>gv=gv", "Move line up" },
    },

    n = {
        ["<C-j>"] = { ":m .+1<CR>==", "Move line down" },
        ["<C-k>"] = { ":m .-2<CR>==", "Move line up" },
        ["|"] = { ":vnew<CR>", { noremap = true, silent = true } },
    },
}

return M
