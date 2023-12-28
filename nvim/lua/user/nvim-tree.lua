local tree = require("nvim-tree")

local function my_on_attach(buffnr)
    local api = require("nvim-tree.api")
    local function opts(desc)
        return {desc = "nvim-tree: " .. desc, buffer = buffnr, noremap = true, silent = true, nowait = true}
    end

    -- Keeps focus after openning file 
    local function openFuncion()
        api.node.open.edit()
        api.tree.focus()
    end

    api.config.mappings.default_on_attach(buffnr)

    -- ver nvim-tree.lua/doc/nvim-tree-lua.txt para mais key remaps
    vim.keymap.set('n', 'l', openFuncion,  opts('Open'))
    -- vim.keymap.set('n', 'l', api.node.open.edit,  opts('Open'))
    vim.keymap.set('n', '<Tab>', api.node.open.preview,  opts('Open Preview'))
    vim.keymap.set('n', 'h', api.node.navigate.parent_close,  opts('Close Directory'))
    vim.keymap.set('n', '<CR>', api.tree.change_root_to_node,  opts('Change Root'))
end

local config = {
    on_attach = my_on_attach,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    renderer = {
        root_folder_modifier = ":t",
        icons = {
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                --        git = {
                --          unstaged = "",
                --          staged = "S",
                --          unmerged = "",
                --          renamed = "➜",
                --          untracked = "U",
                --          deleted = "",
                --          ignored = "◌",
                --        },
            },
        },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    view = {
        width = 30,
        side = "left",
    },
    actions = {
        open_file = {
            quit_on_open = false,
        }
    }
}

tree.setup(config)
