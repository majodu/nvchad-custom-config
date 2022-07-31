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
        ft = { "html", "htmldjango" },
        after = "nvim-treesitter",
        config = function()
            require("custom.plugins.small-configs").autotag()
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
            require("custom.plugins.small-configs").specs()
        end,
    },
    ["kevinhwang91/nvim-ufo"] = {
        requires = "kevinhwang91/promise-async",
        config = function()
            require("custom.plugins.small-configs").ufo()
        end,
    },
}
