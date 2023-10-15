local overrides = require "custom.configs.overrides"
local plugins = {

    -- LSP
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },

    -- Mason
    {
        "williamboman/mason.nvim",
        opts = overrides.mason,
    },

    -- Formatter
    {
        "stevearc/conform.nvim",
        config = function()
            require "custom.configs.conform"
        end,
        event = { "BufReadPre", "BufNewFile" },
    },

    -- Linting
    {
        "mfussenegger/nvim-lint",
        config = function()
            require "custom.configs.linting"
        end,
        event = { "BufReadPre", "BufNewFile" },
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },

    -- Nvim-tree
    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },

    -- TODO-comments
    {
        "folke/todo-comments.nvim",
        event = "BufRead",
        config = function()
            require "custom.configs.comments"
        end,
    },

    -- Numb
    {
        "nacro90/numb.nvim",
        event = "BufRead",
        config = function()
            require("numb").setup {
                show_numbers = true, -- Enable 'number' for the window while peeking
                show_cursorline = true, -- Enable 'cursorline' for the window while peeking
            }
        end,
    },

    -- Cursorword
    {
        "itchyny/vim-cursorword",
        event = { "BufEnter", "BufNewFile" },
        config = function()
            require "custom.configs.cursorword"
        end,
    },
}

return plugins
