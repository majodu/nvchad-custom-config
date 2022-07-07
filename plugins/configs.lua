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
    open_on_setup = true,
    nvim_tree_auto_open = true,
    git = {
        enable = true
    },
    open_on_setup_file = true,
    view = {
        -- side = "right",
        width = 30
    }
}

return M
