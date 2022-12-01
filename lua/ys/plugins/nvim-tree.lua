local setup, nvimtree = pcall(require, 'nvim-tree')
if not setup then
  print('nvim-tree not installed!')
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  print("nvim-tree.config not loaded!")
  return
end

-- -- recommended settings from nvim-tree documentation
-- vim.g.loaded = 1
-- vim.g.loaded_netrwPlugin = 1
--
-- -- change color for arrows in tree to light blue
-- -- vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])
--
-- nvimtree.setup({
--   update_focused_file = {
--     enable = true,
--     update_cwd = true,
--   },
--   -- change folder arrow icons
--   renderer = {
--     icons = {
--       glyphs = {
--         folder = {
--           arrow_closed = "", -- arrow when folder is closed
--           arrow_open = "", -- arrow when folder is open
--         },
--       },
--     },
--   },
--   -- disable window_picker for
--   -- explorer to work well with
--   -- window splits
--   actions = {
--     open_file = {
--       window_picker = {
--         enable = false,
--       },
--     },
--   },
--   git = {
--     ignore = false,
--   },
-- })

local tree_cb = nvim_tree_config.nvim_tree_callback

nvimtree.setup {
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup = {
        "startify",
        "dashboard",
        "alpha",
    },
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    hijack_directories = {
        enable = true,
        auto_open = true,
    },
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
    },
    git = {
        enable = true,
        ignore = false,
        timeout = 500,
    },
    actions = {
      open_file = {
        resize_window = true,
        quit_on_open = true,
        window_picker = { enable = true },
      },
    },
    view = {
        width = 30,
        -- height = 30,
        hide_root_folder = false,
        side = "left",
        mappings = {
            custom_only = false,
            list = {
            { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
            { key = "h", cb = tree_cb "close_node" },
            { key = "v", cb = tree_cb "vsplit" },
            },
        },
        number = false,
        relativenumber = false,
    },
    renderer = {
        highlight_git = true,
        root_folder_modifier = ":t",
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    deleted = "",
                    untracked = "U",
                    ignored = "◌",
                },
                folder = {
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                },
            }
        }
    }
}
