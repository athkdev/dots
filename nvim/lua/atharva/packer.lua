-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}



	use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use('theprimeagen/harpoon')


	use( {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"williamboman/nvim-lsp-installer",
		"neovim/nvim-lspconfig",
	})

    use('nvim-tree/nvim-tree.lua')

    -- themes start
    use('JoosepAlviste/palenightfall.nvim')

	use ({
		"slugbyte/lackluster.nvim",
		lazy = false,
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("lackluster")
			-- vim.cmd.colorscheme("lackluster-hack") -- my favorite
			-- vim.cmd.colorscheme("lackluster-mint")
		end,
	})

	use({
		'projekt0n/github-nvim-theme',
		config = function()
			require('github-theme').setup({
				-- ...
			})

			vim.cmd('colorscheme github_dark')
		end
	})

    use('Yazeed1s/oh-lucy.nvim')

    -- themes end

end)
