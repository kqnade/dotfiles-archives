return {
  {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nord").setup({})
      vim.cmd.colorscheme("nord")
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = { theme = 'nord' }
      }
    end
  },
  {
    'rcarriga/nvim-notify',
    event = "VeryLazy",
    config = function()
      vim.notify = require("notify")
      require("notify")("Notify was loaded!")
    end,
  },
}
