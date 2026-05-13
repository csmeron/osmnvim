---@diagnostic disable: undefined-global
local map = require("core.util").map
-- mappings related to opening menus

-- Exit to netrw
map("n", "<leader>pv", vim.cmd.Ex, opts, { desc = "Open netrw" })
-- Open explorer (Snacks)
map("n", "<leader>e", function()
    require("snacks").explorer()
end, { desc = "Toggle Explorer" })
map("n", "<C-e>", function()
    require("snacks").explorer()
end, { desc = "Toggle Explorer" })

-- Theme swapper
map("n", "<leader>th", "<cmd>Themery<CR>", { desc = "Open theme switcher" })

-- View diagnostic inline
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic" })


-- Github CLI (via snacks.gh as defind in plugins.snacks.init)
map("n", "<leader>gi", function()
    Snacks.picker.gh_issue()
end, { desc = "Github Issues (open)" })
map("n", "<leader>gI", function()
    Snacks.picker.gh_issue({ state = "all" })
end, { desc = "Github Issues (all)"})
map("n", "<leader>gp", function()
    Snacks.picker.gh_pr()
end, { desc = "GitHub Pull Requests (open)" })
map("n", "<leader>gP", function()
    Snacks.picker.gh_pr({ state = "all" })
end, { desc = "GitHub Pull Requests (open)" })
