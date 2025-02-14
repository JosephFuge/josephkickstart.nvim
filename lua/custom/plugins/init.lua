-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require 'lspconfig'

      -- Setup Pyright for Python
      lspconfig.pyright.setup {}
    end,
  },
  {
    'windp/nvim-ts-autotag',
    ft = {
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
    },
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function()
      opts = require 'plugins.configs.treesitter'
      opts.ensure_installed = {
        'lua',
        'javascript',
        'typescript',
        'tsx',
        'python',
      }
      return opts
    end,
  },
}
