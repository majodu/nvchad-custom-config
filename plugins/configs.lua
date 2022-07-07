local M = {}

M.treesitter = {
    ensure_installed = {
        "lua",
        "html",
        "css",
        "python",
        "javascript"
    }
}

M.nvimtree = {
    trash = {
      cmd = "trash-put",
      require_confirm = true,
    },
    git = {
        enable = true
    },
    view = {
        -- side = "right",
        width = 30
    }
}

return M
