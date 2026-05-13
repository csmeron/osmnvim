---@diagnostic disable: undefined-global
return {
  "snacks.nvim",
  keys = {
    {
      "<leader>gb",
      function()
        Snacks.gitbrowse()
      end,
      desc = "Git Browse",
    },
  },
}
