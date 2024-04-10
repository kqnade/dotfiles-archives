return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = {'BufRead', 'BufEnter', 'TextChanged', 'BufWinEnter', 'VimResized'},
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end
  },
}
