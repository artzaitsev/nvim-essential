return {
	'nvim-treesitter/nvim-treesitter',
	config = function ()
		require'nvim-treesitter.configs'.setup{
			-- A list of parser names, or "all" (the listed parsers MUST always be installed)
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
				"go",
				"typescript",
				"javascript",
				"php",
				"bash",
				"astro",
				"jsdoc",
				"json",
				"python",
				"toml",
				"sql",
				"tsx",
				"twig",
				"yaml",
				"vue",
				"xml",
				"html",
				"http",
				"graphql",
				"nginx",
				"dockerfile"
			},
			highlight = {
				enable = true
			},
			auto_install = true,
		}
	end
}
