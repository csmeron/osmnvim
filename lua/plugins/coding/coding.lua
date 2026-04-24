-- Coding-related plugins such as pairs and snippets.
return {
    -- auto pairs currently done with mini.pairs
    -- may be replaced in future with mini.nvim or nvim-autopairs
    {
        "echasnovski/mini.pairs",
        events = "VeryLazy",
        opts = {
			modes = { insert = true, command = true, terminal = false },
			-- skip autopair when next character is any of these
			skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
			-- skip autopair when the cursor is inside these treesitter nodes
			skip_ts = { "string" }, -- to make strings neater and not annoying as balls
			-- skip autopair when next character is a closing pair and there are more
			-- closing pairs than opening pairs
			skip_unbalanced = true,
			-- better deal with markdown code blocks
			markdown = true,
		},
    },
    -- better comments
    {
        "folke/ts-comments.nvim",
        event = "VeryLazy",
        opts = {},
    },
    -- incremental renaming
    {
        "smjonas/inc-rename.nvim",
        cmd = "IncRename",
        opts = {},
    },
    
    -- loads luasnips and cmp stuff
    {
       "hrsh7th/nvim-cmp",
       event = "InsertEnter",
       dependencies = {
           {
               "L3MON4D3/LuaSnip",
               dependencies = "rafamadriz/friendly-snippets",
               opts = { history = true, updateevents = "TextChanged,TextChangedI" },
               config = function(_, opts)
                   require("LuaSnip").config.set_config(opts)
                   require "config.LuaSnip"
               end,
           },
           {
               "windwp/nvim-autopairs",
               opts = {
                   fastwrap = {},
                   disable_filetype = { "TelescopePrompt", "vim" },
               },
               config = function(_, opts)
                   require("nvim.autopairs").setup(opts)

                   local cmp_autopairs = require "nvim-autopairs.completion.cmp"
                   require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
               end
           },
           {
               "saadparwaiz1/cmp_luasnip",
               "hrsh7th/cmp-nvim-lua",
               "hrsh7th/cmp-nvim-lsp",
               "hrsh7th/cmp-buffer",
               "https://codeberg.org/FelipeLema/cmp-async-path.git",
           },
        
       },
    },
}
