vim.o.background = 'dark'
--vim.o.background = 'light'
local status, _ = pcall(vim.cmd, 'colorscheme onedark')
if not status then
  print('colorscheme not found!')
  return
end
