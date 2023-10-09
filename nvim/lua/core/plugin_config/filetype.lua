vim.g.did_load_filetypes = 1
require("filetype").setup({
  overrides = {
    extensions = {
      tfvars = "terraform", -- for nvim-treesitter
      tf = "terraform", -- form nvim-treesitter
      sh = "bash",
      html = "html"
    }
  }
})
