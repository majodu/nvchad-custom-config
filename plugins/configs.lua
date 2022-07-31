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
M.mason  = {
    ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "emmet-ls",
        "json-lsp",

        -- shell
        "shfmt",
        "shellcheck",
    },
}
return M
