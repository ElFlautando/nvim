local M = {}


vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true, })

vim.keymap.set("n", "wq", ":wq<CR>")

vim.keymap.set("n", "<leader>oi", ":Oil<CR>", { noremap = true, silent = true })


-- Command keymap:
vim.keymap.set("c", "<C-b>", "<Left>", { noremap = true })
vim.keymap.set("c", "<C-f>", "<Right>", { noremap = true, })
vim.keymap.set("c", "<C-a>", "<Home>", { noremap = true, })
vim.keymap.set("c", "<C-e>", "<End>", { noremap = true, })

-- Insert keymap:

-- Change keymap
--

function M.lsp(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, opts)
  vim.keymap.set("n", "<leader>ac", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>of", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, opts)

  if client.name == "clangd" then
    opts.buffer = bufnr
    --vim.keymap.set("n", "<leader>oo", ":ClangdSwitchSourceHeader<CR>", { noremap = true, silent = true })
  end
end

function M.hover()
  vim.keymap.set('n', 'K', function()
    require('hover').open()
  end, { desc = 'hover.nvim (open)' })

  -- Mouse support
  vim.keymap.set('n', '<MouseMove>', function()
    require('hover').mouse()
  end, { desc = 'hover.nvim (mouse)' })

  vim.o.mousemoveevent = true
end

return M
