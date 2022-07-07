-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local pluginConfs = require "custom.plugins.configs"



-- make sure you maintain the structure of `core/default_config.lua` here,
M.plugins = {
   user = require "custom.plugins",
   override = {
      ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
      ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
   },
}
M.mappings = require "custom.mappings"
return M
