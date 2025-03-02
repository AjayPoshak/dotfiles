---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-u>"] = { "<C-u>zz", "Move half page up and center the view" },
    ["<C-d>"] = { "<C-d>zz", "Move half page down and center the view" },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
