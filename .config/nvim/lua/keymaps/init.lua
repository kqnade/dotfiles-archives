-- Keymaps
bind = require("keymaps.bind")
map_cr = bind.map_cr
map_cu = bind.map_cu
map_cmd = bind.map_cmd
map_callback = bind.map_callback


-- plugins map
local core_map = require("keymaps.coremap")
local plugins_map = require("keymaps.pluginsmap")

bind.nvim_load_mapping(core_map)
bind.nvim_load_mapping(plugins_map)
