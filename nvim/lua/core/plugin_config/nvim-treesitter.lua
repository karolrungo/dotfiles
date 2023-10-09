local parsers = require "nvim-treesitter.parsers"

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "vim", "vimdoc", "go", "terraform", "java", "json", "xml", "bash" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  }
}
