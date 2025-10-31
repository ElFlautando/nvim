return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',

    config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = true,
        ensure_installed = { "cpp", "lua", "cmake", "julia", "python", "asm" },
        highlight = { enable = true }
      })
    end
  }
}
