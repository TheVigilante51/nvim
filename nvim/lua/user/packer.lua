-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  

  -- Themes
  -- ------------------------------------------------------------------------

  use {             "rebelot/kanagawa.nvim"                         }
  use {             "ellisonleao/gruvbox.nvim"                      }
  use {             "catppuccin/nvim", as = "catppuccin"            }
  use {             "EdenEast/nightfox.nvim", as = "nightfox"       } 
  use {             "navarasu/onedark.nvim"                         }
  use {             "Mofiqul/vscode.nvim"                           }
  use {             "Mofiqul/dracula.nvim"                          }
  use {             "folke/tokyonight.nvim"                         }
  use {             "rose-pine/neovim"                              }
  use {             "neanias/everforest-nvim"                       }
  use {             "oxfist/night-owl.nvim"                         }
  use {             "dasupradyumna/midnight.nvim"                   }
  use {             "Alexis12119/nightly.nvim"                      }
  use {             "marko-cerovac/material.nvim"                   }
  use {             "Everblush/nvim"                                }
  use {             "tiagovla/tokyodark.nvim"                       }
  use {             "Mofiqul/adwaita.nvim"                          }
  use {             "mhartington/oceanic-next"                      }

  use {
    'daltonmenezes/aura-theme',
    rtp = 'packages/neovim',
    config = function()
        vim.cmd("colorscheme aura-dark") -- Or any Aura theme available
  end
  }
  use {
    'uloco/bluloco.nvim',
    requires = { 'rktjmp/lush.nvim' }
  }

  use {
    "scottmckendry/cyberdream.nvim",
    config = function()
        require("cyberdream").setup({
            -- Recommended - see "Configuring" below for more config options
            transparent = true,
            italic_comments = true,
            hide_fillchars = true,
            borderless_telescope = true,
            terminal_colors = true,
        })
    end,
}

  -- ------------------------------------------------------------------------

  -- LSP
  -- ------------------------------------------------------------------------
  
  use {
  	'VonHeikemen/lsp-zero.nvim',
  	-- branch = 'v3.x',
  	requires = {
    	--- Uncomment these if you want to manage LSP servers from neovim
    	-- {'williamboman/mason.nvim'},
    	-- {'williamboman/mason-lspconfig.nvim'},

    	-- LSP Support
    	{'neovim/nvim-lspconfig'},
    	-- Autocompletion
    	{'hrsh7th/nvim-cmp'},
    	{'hrsh7th/cmp-nvim-lsp'},
    	{'L3MON4D3/LuaSnip'},
      }
  }
  
  use 'vimwiki/vimwiki'
  
  -- -----------------------------------------------------------------------

  -- File Explorer (Nerd Tree)
  -- -----------------------------------------------------------------------
  
  use  'preservim/nerdtree'  -- File Explorer
  use 'ryanoasis/vim-devicons' -- Icons for file explorer
  use 'tiagofumo/vim-nerdtree-syntax-highlight' -- Highlighting Different files
  use 'PhilRunninger/nerdtree-buffer-ops'

  -- -----------------------------------------------------------------------
  
  -- Miscelleneous
  -- -----------------------------------------------------------------------
  

  use {
  	'nvim-lualine/lualine.nvim', -- Statusline
  	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'xiyaowong/transparent.nvim' -- making neovim transparent

  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

  -- -----------------------------------------------------------------------

end )
