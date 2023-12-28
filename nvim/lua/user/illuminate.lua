require("illuminate").configure{} -- change the highlight style
-- vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
-- vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
-- vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })

-- change underline highlight to "visual" highlight
vim.cmd("hi LspReferenceWrite guibg=#333333 gui=none")
vim.cmd("hi LspReferenceText guibg=#333333 gui=none")
vim.cmd("hi LspReferenceRead guibg=#333333 gui=none")

-- in case lsp is off
vim.cmd("hi IlluminatedWordText guibg=#333333 gui=none")
vim.cmd("hi IlluminatedWordRead guibg=#333333 gui=none")
vim.cmd("hi IlluminatedWordWrite guibg=#333333 gui=none")
