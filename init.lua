-- local g = vim.g
local opt = vim.opt
-- local api = vim.api
-- opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
-- opt.foldmethod = "indent"
opt.smartindent = true
opt.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.o.foldcolumn = '1'

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
-- vim.keymap.set('n', 'zR', require('ufo').openAllFolds())
-- vim.keymap.set('n', 'zM', require('ufo').closeAllFolds())
-- g.javaScript_fold = 1
vim.api.nvim_set_keymap('n', '<c-g>', '<CMD>lua require("FTerm").toggle()<CR>' , {noremap=false})
vim.api.nvim_set_keymap('t', '<c-g>', [[<C-\><C-N><CMD>lua require("FTerm").toggle()<CR>]] , {noremap=false,silent=true})
vim.api.nvim_set_keymap('n', '<c-f>', [[<CMD>lua vim.lsp.buf.formatting()<CR>]] , {noremap=false,silent=true})

-- On curser move do animation
vim.api.nvim_set_keymap('n', 'n', 'n:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'N:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-d>', '<c-d>:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-u>', '<c-u>:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })

