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
}
