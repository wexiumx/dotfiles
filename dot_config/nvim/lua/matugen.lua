local M = {}

function M.setup()
  require("base16-colorscheme").setup({
    -- Background tones
    base00 = "#17130e", -- Default Background
    base01 = "#231f1a", -- Lighter Background (status bars)
    base02 = "#2e2924", -- Selection Background
    base03 = "#9c8e80", -- Comments, Invisibles
    -- Foreground tones
    base04 = "#d3c4b4", -- Dark Foreground (status bars)
    base05 = "#ebe1d9", -- Default Foreground
    base06 = "#ebe1d9", -- Light Foreground
    base07 = "#ebe1d9", -- Lightest Foreground
    -- Accent colors
    base08 = "#ffb4ab", -- Variables, XML Tags, Errors
    base09 = "#bacd9f", -- Integers, Constants
    base0A = "#dec2a2", -- Classes, Search Background
    base0B = "#ffb959", -- Strings, Diff Inserted
    base0C = "#bacd9f", -- Regex, Escape Chars
    base0D = "#ffb959", -- Functions, Methods
    base0E = "#dec2a2", -- Keywords, Storage
    base0F = "#93000a", -- Deprecated, Embedded Tags
  })
end

-- Register a signal handler for SIGUSR1 (matugen updates)
local signal = vim.uv.new_signal()
signal:start(
  "sigusr1",
  vim.schedule_wrap(function()
    package.loaded["matugen"] = nil
    require("matugen").setup()
  end)
)

return M
