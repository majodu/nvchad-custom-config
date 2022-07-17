local M = {}

M.treesitter = {
   ensure_installed = {
      "lua",
      "html",
      "css",
      "python",
   },
   indent = {
      enable = true,
   },
   autotag = {
      enable = true,
   },
}

M.nvimtree = {
   trash = {
      cmd = "trash-put",
      require_confirm = true,
   },
   git = {
      enable = true,
   },
   view = {
      -- side = "right",
      width = 30,
   },
}

return M
