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
    animate = { enabled = true }, -- animations
    input = { enabled = true }, -- better vim.ui.input
    dim = { enabled = true }, -- dims code not in active scope
    gh = { enabled = true }, -- github cli integration
    git = { enabled = true }, -- git utilities
    notifier = { enabled = true }, -- prettier vim.notify
    scroll = { enabled = true }, -- smooth scrolling
    toggle = { map = vim.keymap.set }, -- toggle keymaps integrated with which-key icons / colors
  },
  import = "plugins.snacks",
}
