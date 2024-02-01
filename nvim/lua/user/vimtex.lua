vim.g.vimtext_mappings_prefix = '<leader>l'
vim.g.vimtex_view_general_viewer = 'zathura'

vim.g.vimtex_indent_lists = {}

vim.cmd([[set conceallevel=2]])
vim.g.vimtex_syntax_conceal = {
    accents = 1,
    ligatures = 1,
    cites = 1,
    fancy = 1,
    spacing = 1,
    greek = 1,
    math_bounds = 0,
    math_delimiters = 1,
    math_fracs = 1,
    math_super_sub = 1,
    math_symbols = 1,
    sections = 1,
    styles = 1,
}
