---@diagnostic disable: undefined-global
---
--- Some snacks modules will be defined in separate places
--- such as the snacks.explorer config at plugins.editor.explore
--- This is just for sorting and may change down the road
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    animate = { enabled = true },
    input = { enabled = true },
    git = { enabled = true },
    notifier { enabled = true },
    scroll = { enabled = true },
    toggle = { map = vim.keymap.set },
  },
  import "plugins.snacks",
}
