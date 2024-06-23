return {
  -- telescope
  ["n|ff"] = map_cr("<Cmd>lua require('telescope.builtin').find_files()<cr>"):with_noremap():with_silent():with_desc("Telescope: Find Files"),
  ["n|fg"] = map_cr("<Cmd>lua require('telescope.builtin').live_grep()<cr>"):with_noremap():with_silent():with_desc("Telescope: Live grep"),
  ["n|fb"] = map_cr("<Cmd>lua require('telescope.builtin').buffers()<cr>"):with_noremap():with_silent():with_desc("Telescope: Buffers"),
  ["n|fh"] = map_cr("<Cmd>lua require('telescope.builtin').help_tags()<cr>"):with_noremap():with_silent():with_desc("Telescope: Help tags"),

  -- ToggleTerm
  ["n|tv"] = map_cr("<Cmd>ToggleTerm direction=vertical<cr>"),
  ["n|tt"] = map_cr("<Cmd>ToggleTerm direction=horizontal<cr>"),
  ["n|th"] = map_cr("<Cmd>ToggleTerm direction=horizontal<cr>"),
  ["n|tf"] = map_cr("<Cmd>ToggleTerm direction=float<cr>"),
}

