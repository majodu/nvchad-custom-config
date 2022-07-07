local M = {}
M.fterm = {
    n = {
        ["<leader>g"] = {'<CMD>lua require("FTerm").toggle()<CR>' , "Open Fterm"}
    },
    t = {
        ["<leader>g"] = {[[<CMD>lua require("FTerm").toggle()<CR>]] , "Open Fterm"}
    }
}
return M
