return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme kanagawa")
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = { 
          theme = 'auto',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = {
              statusline = {},
              winbar = {"neo-tree"},
          },
          ignore_focus = {
            "neo-tree",
            "lazy"
          },
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        winbar = {
          lualine_a = {
            {
              'buffers',
              mode = 2,
            }
          },
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {
          lualine_a = {
            {
              "tabs",
              mode = 2,
              path = 0,
            }
          },
          lualine_y = {
            {
              'datetime',
              style = "%y/%m/%d(%a) %H:%M:%S"
            }
          }
        },
        extensions = {"neo-tree", "fzf", "lazy", "mason", "toggleterm", "trouble"}
      }

    end
  },
  {
    'rcarriga/nvim-notify',
    event = "VeryLazy",
    config = function()
      vim.notify = require("notify")
    end,
  },
}
