
local dap = require('dap')

vim.keymap.set('n', "<leader>dt", dap.toggle_breakpoint)
vim.keymap.set('n', "<leader>dc", dap.continue)
vim.keymap.set('n', "<leader>do", dap.step_over)
vim.keymap.set('n', "<leader>di", dap.toggle_breakpoint)
vim.keymap.set('n', "<leader>di", dap.repl.open)
