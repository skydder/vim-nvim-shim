vim = vim or {}

vim.api = require('nvim_api')

vim.opt = setmetatable({}, {
    __index = function(_, k) return vim.api.nvim_get_option(k) end,
    __newindex = function(_, k, v) return vim.api.nvim_set_option(k, v) end,
})
