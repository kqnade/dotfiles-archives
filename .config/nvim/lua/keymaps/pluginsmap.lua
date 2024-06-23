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

  -- bufferline
  ["n|<A-]>"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent():with_desc("BufferLine: Cycle Next"),
  ["n|<A-[>"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent():with_desc("BufferLine: Cycle Previous"),
  ["n|<A-}>"] = map_cr("BufferLineMoveNext"):with_noremap():with_silent():with_desc("BufferLine: Move Next"),
  ["n|<A-{>"] = map_cr("BufferLineMovePrev"):with_noremap():with_silent():with_desc("BufferLine: Move Next"),
  ["n|<A-p>"] = map_cr("BufferLinePick"):with_silent():with_silent():with_desc("BufferLine: Buffer Select"),
  ["n|<A-S-p>"] = map_cr("BufferLinePickClose"):with_noremap():with_silent():with_desc("BufferLine: Buffer Close"),
  ["n|<A-o>"] = map_cr("BufferLineTogglePin"):with_noremap():with_silent():with_desc("BufferLine: Toggle Pin"),
  ["n|<A-w>"] = map_cr("BufferLineCloseOthers"):with_noremap():with_silent():with_desc("BufferLine: Close Other Buffer")
}

