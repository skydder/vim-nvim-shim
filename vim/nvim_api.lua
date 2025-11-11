local M = {}

function M.nvim_command(cmd) vim.command(cmd) end

function M.nvim_set_option(name, value)
    if type(value)=="boolean" then
        if value then vim.command("set " .. name) else vim.command("set no" .. name) end
    else
        vim.command(string.format("set %s=%s", name, tostring(value)))
    end
end

function M.nvim_get_option(name) return vim.eval("&"..name) end

return M
