vim.api.nvim_create_autocmd({ "filetype", }, {
    pattern = { "cpp", "python", "lua", "cmake", "tex", "typescript", "javascript", "typescriptreact", "markdown", },
    callback = function(args)
        vim.treesitter.start()
    end,
})
