return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup{}
			lspconfig.gopls.setup{}
			lspconfig.golangci_lint_ls.setup{}
			lspconfig.astro.setup{}
			lspconfig.ts_ls.setup{}
			lspconfig.pyright.setup{}
			lspconfig.vuels.setup{}
			lspconfig.phpactor.setup{}
			lspconfig.bashls.setup{}
			lspconfig.twiggy_language_server.setup{}
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

					local opts = { buffer = ev.buf }
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
					vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
					vim.keymap.set("n", "<Leader>D", vim.lsp.buf.type_definition, opts)
					vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, { buffer = ev.buf, desc = "Rename Symbol" })
					vim.keymap.set({ "n", "v" }, "<Leader>la", vim.lsp.buf.code_action, opts)
					vim.keymap.set("n", "<Leader>lf", function()
						vim.lsp.buf.format({ async = true })
					end, opts)
				end,
			})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
				    "lua_ls",
					"gopls",
					"golangci_lint_ls",
					"astro",
					"ts_ls",
					"pyright",
					"vuels",
					"phpactor",
					"bashls",
					"twiggy_language_server"
				},
			})
		end
	}
}
