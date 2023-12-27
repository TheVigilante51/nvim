function ColorMyPencils(color)
	color = color or "aura-dark"
	vim.cmd.colorscheme(color)
    vim.cmd("TransparentEnable")

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" } )
end

ColorMyPencils()

local colors = require("tokyonight.colors").setup()
local toggleterm = require("toggleterm")

toggleterm.setup({
  shade_terminals = true,
  highlights = {
    Normal = {
      guibg = colors.bg_dark
    }
  }
})
