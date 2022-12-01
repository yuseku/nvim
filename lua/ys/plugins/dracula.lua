local setup, dracula = pcall(require, "dracula")
if not setup then
  print('Dracula not installed!')
  return
end


dracula.setup({
  -- customize dracula color palette
  colors = {
    bg = "#282A36",
    fg = "#F8F8F2",
    selection = "#665c54",
    comment = "#928374",
    red = "#FF5555",
    orange = "#FFB86C",
    yellow = "#F1FA8C",
    green = "#50fa7b",
    purple = "#BD93F9",
    cyan = "#8BE9FD",
    pink = "#FF79C6",
    bright_red = "#FF6E6E",
    bright_green = "#69FF94",
    bright_yellow = "#FFFFA5",
    bright_blue = "#D6ACFF",
    bright_magenta = "#FF92DF",
    bright_cyan = "#A4FFFF",
    bright_white = "#FFFFFF",
    menu = "#21222C",
    visual = "#665c54",
    gutter_fg = "#4B5263",
    nontext = "#3B4048",
  },
  -- show the '~' characters after the end of buffers
  show_end_of_buffer = true, -- default false
  -- use transparent background
  transparent_bg = true, -- default false
  -- set custom lualine background color
  lualine_bg_color = "#44475a", -- default nil
  -- set italic comment
  -- italic_comment = true, -- default false
  -- overrides the default highlights see `:h synIDattr`
  overrides = {
    -- telescope.nvim
    TelescopeNormal = {},
    TelescopeSelection = {},
    TelescopeSelectionCaret = {},
    TelescopeMultiSelection = {},
    TelescopeBorder = {},
    TelescopePromptBorder = {},
    TelescopeResultsBorder = {},
    TelescopePreviewBorder = {},
    TelescopeMatching = {},
    TelescopePromptPrefix = {},
    TelescopePrompt = {},
        -- nvim-tree
    -- NvimTreeSymlink = { fg = palette.neutral_aqua },
    -- NvimTreeRootFolder = { fg = palette.neutral_purple, bold = true },
    -- NvimTreeFolderIcon = { fg = palette.neutral_blue, bold = true },
    -- NvimTreeFileIcon = { fg = palette.light2 },
    -- NvimTreeExecFile = { fg = palette.neutral_green, bold = true },
    -- NvimTreeOpenedFile = { fg = palette.bright_red, bold = true },
    -- NvimTreeSpecialFile = { fg = palette.neutral_yellow, bold = true, underline = true },
    -- NvimTreeImageFile = { fg = palette.neutral_purple },
    -- NvimTreeIndentMarker = { fg = palette.dark3 },
    -- NvimTreeGitDirty = { fg = palette.neutral_yellow },
    -- NvimTreeGitStaged = { fg = palette.neutral_yellow },
    -- NvimTreeGitMerge = { fg = palette.neutral_purple },
    -- NvimTreeGitRenamed = { fg = palette.neutral_purple },
    -- NvimTreeGitNew = { fg = palette.neutral_yellow },
    -- NvimTreeGitDeleted = { fg = palette.neutral_red },
    -- NvimTreeWindowPicker = { bg = palette.faded_aqua },
    -- Examples
    -- NonText = { fg = dracula.colors().white }, -- set NonText fg to white
    -- NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
    -- Nothing = {} -- clear highlight of Nothing
  },
})
