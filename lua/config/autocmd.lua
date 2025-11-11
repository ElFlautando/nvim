vim.api.nvim_create_autocmd({ "filetype", }, {
  pattern = { "cxx", "c", "python", "lua", "cmake", "tex", "javascript", "markdown", },
  callback = function(args)
    vim.treesitter.start()
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    local function buf_set_option(...)
      vim.api.nvim_buf_set_option(ev.buf, ...)
    end
    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
    require "config.keymapping".lsp(client, ev.buf)
  end,
})
