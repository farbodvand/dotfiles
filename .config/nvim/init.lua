vim.o.guifont = "Hack:h18"
vim.opt.number = true
vim.g.neovide_refresh_rate = 120
vim.g.neovide_fullscreen = false
vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_vfx_mode = ""
local alpha = function()
  return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end

vim.g.transparency = 0.8