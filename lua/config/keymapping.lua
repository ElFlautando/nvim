local M = {}


function M.hover()
  vim.keymap.set('n', 'K', function()
    require('hover').open()
  end, { desc = 'hover.nvim (open)' })

  vim.keymap.set('n', 'gK', function()
    require('hover').enter()
  end, { desc = 'hover.nvim (enter)' })

  vim.keymap.set('n', '<C-p>', function()
    require('hover').switch('previous')
  end, { desc = 'hover.nvim (previous source)' })

  vim.keymap.set('n', '<C-n>', function()
    require('hover').switch('next')
  end, { desc = 'hover.nvim (next source)' })

  -- Mouse support
  vim.keymap.set('n', '<MouseMove>', function()
    require('hover').mouse()
  end, { desc = 'hover.nvim (mouse)' })

  vim.o.mousemoveevent = true
end

return M
