
local bufjump = require("bufjump")

vim.keymap.set('n', '<C-n>', bufjump.backward)
vim.keymap.set('n', '<C-e>', bufjump.forward)
