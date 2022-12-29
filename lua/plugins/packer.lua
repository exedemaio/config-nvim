local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then 
	packer_bootstrap = fn.system({'git', 'clone', '--depth', 
'1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- theme
	use 'Rigellute/shades-of-purple.vim'
	use 'shaunsingh/moonlight.nvim'

	use 'vim-airline/vim-airline'
	use 'christoomey/vim-tmux-navigator'

	-- file explorer
	use {
	  'nvim-neo-tree/neo-tree.nvim',
	  branch = "v2.x",
	  requires = {
	    "nvim-lua/plenary.nvim",
	    "kyazdani42/nvim-web-devicons",
	    "MunifTanjim/nui.nvim"
	  },
	}

	use {
	   'feline-nvim/feline.nvim',
	   requires = {
		   'gitsigns.nvim',
		   'nvim-web-devicons'
	   }
   	}
end)
