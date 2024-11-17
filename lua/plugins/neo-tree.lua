return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
	config = function()
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none"})
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none"})
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = " ",
					[vim.diagnostic.severity.WARN] = " ",
					[vim.diagnostic.severity.INFO] = " ",
					[vim.diagnostic.severity.HINT] = " ",
				},
			},
		})
		require("neo-tree").setup({
			close_if_last_window = false,
			default_component_configs = {
				git_status = {
					symbols = {
						added     = "✚",  -- добавлен
						modified  = "",  -- изменен
						deleted   = "✖",  -- удален
						renamed   = "➜",  -- переименован
						untracked = "",  -- неотслеживаемый
						ignored   = "",  -- игнорируется
						unstaged  = "✗",  -- не проиндексирован
						staged    = "✓",  -- проиндексирован
						conflict  = "",  -- конфликт
					},
				},
			},
			filesystem = {
				filtered_items = {
					hide_hidden = false, -- Показывать скрытые файлы
					hide_dotfiles = false, -- Еще один способ указать показ файлов, начинающихся с точки
					hide_gitignored = false,
				},
				follow_current_file = {
				  enabled = true, -- Включить слежение за текущим файлом
				  leave_dirs_open = false, -- Закрывать директории, которые не связаны с текущим файлом
				},
				use_libuv_file_watcher = true,
			},
		})
	end,
}
