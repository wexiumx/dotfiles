return {
  {
    "RRethy/base16-nvim",
    lazy = false,
    priority = 1000, -- load before other plugins
  },

  -- tell LazyVim to use it as the default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "base16-<scheme-name>", -- e.g. "base16-gruvbox-dark-hard"
    },
  },
}
