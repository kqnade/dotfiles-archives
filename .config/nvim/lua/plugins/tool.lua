return {
  {
    'akinsho/toggleterm.nvim', cmd = 'ToggleTerm',
    version = "*", config = true,
    config = function()
      require("toggleterm").setup{}
    end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<C-n>","<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("neo-tree").setup()
    end,
  },
  {
    's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
    config = function()
        require'window-picker'.setup()
    end,
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
}
