require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "go",
    "terraform",
    "java",
    "json",
    "xml",
    "bash",
    "markdown", -- for lspsaga
    "markdown_inline" -- for lspsaga
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  }
}
