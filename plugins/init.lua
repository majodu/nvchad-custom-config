return {
   ["goolord/alpha-nvim"] = {
      disable = false,
   },
   -- ["lepture/vim-jinja"] = {},
   -- ["sbdchd/neoformat"] = {},
   ["rmagatti/auto-session"] = {
      config = function()
         require("auto-session").setup {
            auto_save_enabled = false,
         }
      end,
   },
   ["windwp/nvim-ts-autotag"] = {
      ft = { "html" },
      after = "nvim-treesitter",
      config = function()
         require("nvim-ts-autotag").setup { enable = true }
      end,
   },
   ["numToStr/FTerm.nvim"] = {
      config = function()
         require("FTerm").setup {
            border = "double",
            dimensions = {
               height = 0.9,
               width = 0.9,
            },
         }
      end,
   },
   -- format & linting
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
   },
   ["edluffy/specs.nvim"] = {
      config = function()
         require("specs").setup {
            show_jumps = true,
            min_jump = 30,
            popup = {
               delay_ms = 0, -- delay before popup displays
               inc_ms = 10, -- time increments used for fade/resize effects
               blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
               width = 15,
               winhl = "PMenu",
               fader = require("specs").pulse_fader,
               resizer = require("specs").shrink_resizer,
            },
            ignore_filetypes = {},
            ignore_buftypes = {
               nofile = true,
            },
         }
      end,
   },
}
