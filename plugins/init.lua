return {
    ["NvChad/nvterm"] = {
        config = function()
            require "plugins.configs.nvterm"
        end
    },
    ["lepture/vim-jinja"] = {},
    ["sbdchd/neoformat"] = {},
    ["rmagatti/auto-session"] = {
        config = function()
            require("auto-session").setup {
                auto_save_enabled = false
            }
        end
    },
    ["windwp/nvim-ts-autotag"] = {
        config = function()
            require("nvim-ts-autotag").setup {enable = true}
        end
    },
    ["numToStr/FTerm.nvim"] = {
        config = function()
            require "FTerm".setup(
                {
                    border = "double",
                    dimensions = {
                        height = 0.9,
                        width = 0.9
                    }
                }
            )
        end
    }
}
