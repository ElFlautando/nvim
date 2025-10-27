return {
  "lewis6991/hover.nvim",
  keys = require "config.keymapping".hover,
  title = false,
  providers = {

    'hover.providers.diagnostic',
    'hover.provider.lsp'
  }

}


