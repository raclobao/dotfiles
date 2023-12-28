-- local colorscheme = "tokyonight-night"
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--     print("Scheme not loaded")
--     return
-- end

require('base16-colorscheme').with_config({
    telescope = false,
    illuminate = false,
})

vim.cmd("colorscheme base16-equilibrium-gray-dark")
vim.cmd("hi NonText guifg=bg") -- tildes not visible!

-- change matching pair colors!
vim.cmd("hi MatchParen guibg=none guifg=purple")
