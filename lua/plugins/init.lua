return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "Diogo-ss/42-header.nvim",
    cmd = { "Stdheader" },
    opts = {
      auto_update = true, -- Update header when saving.
      user = "jianwong", -- Your user.
      mail = "jianwong@student.42kl.edu.my", -- Your mail.
    },
    config = function(_, opts)
      require("42header").setup(opts)
    end,
    lazy = false,
  },
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim", "lua", "vimdoc",
				"html", "css", "markdown", "c"
			},
		},
	},
}
