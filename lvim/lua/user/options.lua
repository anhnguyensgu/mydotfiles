--Native vim options
vim.opt.timeoutlen = 200
vim.opt.relativenumber = true
vim.g.tokyonight_dark_float = false
--Lvim options
lvim.transparent_window = true
lvim.log.level = debug
lvim.format_on_save = true
lvim.builtin.telescope.on_config_done = function()
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
end
-- vim.opt.guicursor = "i:block"
