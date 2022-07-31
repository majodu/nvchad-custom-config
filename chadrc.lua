-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local pluginConfs = require "custom.plugins.configs"

-- make sure you maintain the structure of `core/default_config.lua` here,
M.plugins = {
    user = require "custom.plugins",
    options = {
        lspconfig = {
            setup_lspconf = "custom.plugins.lspconfig",
        },
    },
    override = {
        ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
        ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
        ["williamboman/mason.nvim"] = pluginConfs.mason,
    },
}
-- M.mappings = require "custom.mappings"
return M
