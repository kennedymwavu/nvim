-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- 80 character vertical line --
    vim.api.nvim_set_hl(0, "ColorColumn", {
      bg = "#3a3a3a",
    })

    -- line number colors --
    -- current line:
    vim.api.nvim_set_hl(0, "CursorLineNr", {
      fg = "#f2f2f2",
      bold = true,
    })

    -- other lines:
    vim.api.nvim_set_hl(0, "LineNr", {
      fg = "#999999",
    })

    -- relative lines above:
    vim.api.nvim_set_hl(0, "LineNrAbove", {
      fg = "#999999",
    })

    -- relative lines below:
    vim.api.nvim_set_hl(0, "LineNrBelow", {
      fg = "#999999",
    })

    -- comments --
    vim.api.nvim_set_hl(0, "Comment", {
      fg = "#8a94bf",
      italic = true,
    })
  end,
})
