local lint = require "lint"

lint.linters_by_ft = {
    lua = { "selene" },
    python = { "flake8" },
}

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged" }, {
    group = lint_augroup,
    callback = function()
        lint.try_lint()
    end,
})
