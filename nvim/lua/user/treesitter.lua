require ("nvim-treesitter.configs").setup{
    
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python" }, -- put the language you want in this array
    -- ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = { "" },                                                       -- List of parsers to ignore installing
    sync_install = true,                                                          -- install languages synchronously (only applied to `ensure_installed`)

    highlight = {
        enable = true,       -- false will disable the whole extension
        disable = { "css" }, -- list of language that will be disabled
    },
    autopairs = {
        enable = true,
    },
    indent = { enable = true, disable = { "html", "css" } }, -- so does it doesnt interfer with vim-closetag indentation
    -- indent = { enable = true },

}
