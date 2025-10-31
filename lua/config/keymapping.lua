local M = {}


vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true, })

vim.keymap.set("n", "wq" , ":wq<CR>")

vim.keymap.set("n", "<leader>o", ":Oil<CR>", {noremap = true, silent =true})


-- Command keymap:
vim.keymap.set("c", "<C-b>", "<Left>", {noremap = true})
vim.keymap.set("c", "<C-f>", "<Right>", { noremap = true, })
vim.keymap.set("c", "<C-a>", "<Home>", { noremap = true, })
vim.keymap.set("c", "<C-e>", "<End>", { noremap = true, })

-- Insert keymap:

-- Change keymap
--

function M.lsp()
  vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format())
  vim.keymap.set("n", "<leader>ac" , vim.lsp.buf.code_action())

  vim.keymap.set("n", "<leader>dg", vim.diagnostics.open_float())
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
