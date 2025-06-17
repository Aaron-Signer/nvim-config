require("config.lazy")
require("config.remap")
print("hello world")
vim.lsp.enable('lua_ls')
vim.lsp.enable('pylsp')
--vim.lsp.config('lua-ls', {
--	cmd = { "~/lua-language-server/bin/lua-language-server" }
--})

local test = 5
print(test)

if true then

end
