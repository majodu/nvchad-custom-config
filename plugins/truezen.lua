local present, truzen = pcall(require, "true-zen")

if not present then
   return
end

local options = {
   ui = {
      top = {
         showtabline = 0,
      },
      left = {
         number = false,
      },
   },
   modes = {
       	ataraxis = {
       		left_padding = 22,
		right_padding = 22,
		top_padding = 1,
		bottom_padding = 1,
		ideal_writing_area_width = {0},
		auto_padding = false,
		keep_default_fold_fillchars = true,
		custom_bg = {"none", ""},
		bg_configuration = true,
		quit = "untoggle",
		ignore_floating_windows = true,
		affected_higroups = {
			NonText = true,
			FoldColumn = true,
			ColorColumn = true,
			VertSplit = true,
			StatusLine = true,
			StatusLineNC = true,
			SignColumn = true,
		},
        },
      -- ataraxis = {
      --    left_padding = 3,
      --    right_padding = 3,
      --    top_padding = 1,
      --    bottom_padding = 0,
      --    auto_padding = false,
      -- },
   },
}

truzen.setup(options)
