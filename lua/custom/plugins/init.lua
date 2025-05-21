-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {
    modes = {
      char = {
        highlight = { backdrop = false },
      },
    },
    highlight = { backdrop = false },
  },
  keys = {
    {
      'S',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').jump()
      end,
      desc = 'Flash',
    },
    -- {
    --   'S',
    --   mode = { 'n', 'x', 'o' },
    --   function()
    --     require('flash').treesitter()
    --   end,
    --   desc = 'Flash Treesitter',
    -- },
  },
  {
    'zbirenbaum/copilot.lua',
    config = function()
      require('copilot').setup {
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = '<A-n>',
          },
        },
      }
    end,
    lazy = false,
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
