local present, null_ls = pcall(require, "null-ls")

if not present then
    return
end

local b = null_ls.builtins

local sources = {
    -- python
    b.formatting.autopep8,

    -- webdev stuff
    -- b.formattin/.eslint.with { filetypes = { "javascript" } },
    b.code_actions.refactoring,
    b.formatting.djhtml,
    b.formatting.deno_fmt.with { extra_args = { "--options-indent-width", "4" } },
    b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },

    -- Lua
    b.formatting.stylua.with { extra_args = { "--indent-width", "4" } },

    -- shell
    b.formatting.shfmt,
    b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

    -- cpp
    -- b.formatting.clang_format,
}

null_ls.setup {
    debug = true,
    sources = sources,
}
