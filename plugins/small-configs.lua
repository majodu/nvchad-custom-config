local M = {}

M.autotag = function()
    local present, autotag = pcall(require, "nvim-ts-autotag")

    if present then
        autotag.setup()
    end
end

M.specs = function()
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
end
M.ufo = function()
    require("ufo").setup {
        provider_selector = function(bufnr, filetype, buftype)
            return { "treesitter", "indent" }
        end,
    }
end
return M
