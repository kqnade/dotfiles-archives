return {
  {
    'rainbowhxch/accelerated-jk.nvim',
    event = "BufEnter"
  },
  {
    'm4xshen/autoclose.nvim',
    event = "BufWinEnter",
    config = function()
      require("autoclose").setup()
    end,
  },
  {
    "max397574/better-escape.nvim",
    event = "BufWinEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
}
