local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
-- ASCII Art
dashboard.section.header.val = [[


 _   __ ____ ____ ___    ___   ___ 
| | / // __// __// _ |  / _ \ / _ |
| |/ // _/ _\ \ / __ | / ___// __ |
|___//___//___//_/ |_|/_/   /_/ |_|


]]

dashboard.section.buttons.val = {
dashboard.button( "f", "󰈞  > Find file", ":Telescope find_files<CR>"),
dashboard.button( "q", "󰈆  > Quit NVIM", ":qa<CR>"),
dashboard.button( "e", "  > Explorer", ":Ex<CR>"),
}

alpha.setup(dashboard.opts)
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
