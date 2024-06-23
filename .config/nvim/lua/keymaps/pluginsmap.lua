return {
  -- telescope
  ["n|ff"] = map_cr("lua require('telescope.builtin').find_files()"):with_noremap():with_silent():with_desc("Telescope: Find Files"),
  ["n|fg"] = map_cr("lua require('telescope.builtin').live_grep()"):with_noremap():with_silent():with_desc("Telescope: Live grep"),
  ["n|fb"] = map_cr("lua require('telescope.builtin').buffers()"):with_noremap():with_silent():with_desc("Telescope: Buffers"),
  ["n|fh"] = map_cr("lua require('telescope.builtin').help_tags()"):with_noremap():with_silent():with_desc("Telescope: Help tags"),

  -- ToggleTerm
  ["n|tv"] = map_cr("ToggleTerm direction=vertical"),
  ["n|tt"] = map_cr("ToggleTerm direction=horizontal"),
  ["n|th"] = map_cr("ToggleTerm direction=horizontal"),
  ["n|tf"] = map_cr("ToggleTerm direction=float"),
}

