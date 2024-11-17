return {
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					numbers = "none",
					color_icons = false,
					indicator = {
						style = "none",
					},
					offsets = {
						{
							filetype = "neo-tree",
							text = "Explorer",
							text_align = "left",
							separator = true,
						},
					},
					modified_icon = "●",
					left_trunc_marker = "",
					right_trunc_marker = "",
--					separator_style = {"", ""},
					diagnostics = "nvim_lsp",
					diagnostics_indicator = function(count, level, diagnostics_dict, context)
						local s = " "
						for e, _ in pairs(diagnostics_dict) do
							local sym = e == "error" and " " or (e == "warning" and " " or " ")
							s = s .. sym
						end
						return s
					end,
					always_show_bufferline = true,

				},
				highlights = {
					background = {
						fg = gray,
					},
					buffer_selected = {
						fg = links,
					},
					buffer_visible = {
						fg = gray,
					},
					separator = {
						bg = "#1b1b29",
						fg = "#1b1b29",
					},
					diagnostic = {},
--					indicator_selected = {
--						fg = "#CCCCCC", -- Цвет линии индикатора (под активной вкладкой)
--					},
				}
			})
		end,
	}
}
