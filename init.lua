-- Neovim Lua script to dynamically load .lua config files
function requirePath(path)
	local files = io.popen('find "$HOME"/.config/nvim/lua/' .. path .. " -type f")

	for file in files:lines() do
		local req_file = file:gmatch("%/lua%/(.+).lua$")({ 0 }):gsub("/", ".")
		status_ok, _ = pcall(require, req_file)

		if not status_ok then
			vim.notify("Failed loading " .. req_file, vim.log.levels.ERROR)
		end
	end
end

--- Settings
require("options")
-- Plugins
require("Plugins")
--- Keybindings
require("keybindings")
--- autocommands
require("autocmds")
requirePath("config")