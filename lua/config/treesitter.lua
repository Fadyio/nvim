-- Written by @Fadynagh from http://fadyio.com
-- Email:me@fadyio.com
-- Github: @fady0
--
local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "all",
	"norg",
	sync_install = false,
	ignore_install = { "jsonc", "fusion", "ocamllex","phpdoc" },

	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "php" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	},
	indent = { enable = true, disable = { "yaml" } },

	context_commentstring = { enable = true },
	autotag = { enable = true },
	endwise = { enable = true },
})
