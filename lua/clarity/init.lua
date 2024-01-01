local clarity = {}
local theme = require 'clarity.theme'
clarity.setup = function(user_opts)
  local defaults = {
    transparent = false,
    italic_comments = true,
    color_overrides = {},
    group_overrides = {},
    disable_nvimtree_bg = true,
  }

  local global_settings_opts = vim.tbl_extend("force", defaults, {
    transparent = (vim.g.clarity_transparent == true or vim.g.clarity_transparent == 1),
    italic_comments = (vim.g.clarity_italic_comment == true or vim.g.clarity_italic_comment == 1),
    disable_nvimtree_bg = (vim.g.clarity_disable_nvim_tree_bg == true or vim.g.clarity_disable_nvim_tree_bg == 1),
  })

  local opts = vim.tbl_extend("force", global_settings_opts, user_opts)

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "clarity"

  theme.set_highlights(opts)
  theme.link_highlight()

  for group, val in pairs(opts["group_overrides"] or {}) do
    vim.api.nvim_set_hl(0, group, val)
  end
end

return clarity
