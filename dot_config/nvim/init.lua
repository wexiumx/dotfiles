-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("matugen").setup()

local function make_transparent()
  local groups = {
    "Normal",
    "NormalNC",
    "NormalFloat",
    "FloatBorder",
    "SignColumn",
    "StatusLine",
    "StatusLineNC",
    "EndOfBuffer",
    "LineNr",
    "CursorLineNr",
  }
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
  end
end

make_transparent()
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = make_transparent,
})
