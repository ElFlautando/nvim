vim.o.number = true
vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

vim.o.clipboard = "unnamedplus"

vim.diagnostic.config {
  virtual_text = false,
  float = { show_header = true, source = 'always', border = 'rounded', focusable = false, },
}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " ", }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "", })
end

vim.cmd("colorscheme tokyonight")

if os.getenv "TMUX" ~= nil then
  vim.g.clipboard = {
    name = "tmux clipboard",
    copy = {
      ["+"] = { "tmux", "load-buffer", "-" },
      ["*"] = { "tmux", "load-buffer", "-" },
    },
    paste = {
      ["+"] = { "tmux", "save-buffer", "-" },
      ["*"] = { "tmux", "save-buffer", "-" },
    },
    cache_enabled = true,
  }
end
