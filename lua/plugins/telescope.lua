return {
  {
    "nvim-telescope/telescope.nvim",
    -- change some options
    opts = {
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--no-ignore",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
        },
        file_ignore_patterns = {"node_modules"},
      },
      pickers = {
        find_files = {
            find_command = { "find", ".", "-type", "f", "-not", "-path", "./.git/*", "-not", "-path", "./.cache/*" }
        }
      }
    },
  },
}
