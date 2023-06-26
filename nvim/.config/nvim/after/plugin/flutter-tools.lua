
require("flutter-tools").setup({

    debugger = { -- integrate with nvim dap + install dart code debugger
    enabled = true,
    run_via_dap = true, -- use dap instead of a plenary job to run flutter apps
    -- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
    -- see |:help dap.set_exception_breakpoints()| for more info
    exception_breakpoints = {},
    register_configurations = function(paths)
        require("dap").adapters.dart = {
            type = "executable",
            command = "flutter",
            args = {"debug_adapter"}
        }
        require("dap").configurations.dart = {}
        require("dap.ext.vscode").load_launchjs() end,

        color = { -- show the derived colours for dart variables
        enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
        background = true, -- highlight the background
        background_color = { r = 19, g = 17, b = 24},
        foreground = false, -- highlight the foreground
        virtual_text = true, -- show the highlight using virtual text
        virtual_text_str = "■", -- the virtual text character to highlight
    },
    settings = {
        analysisExcludedFolders = {
            vim.fn.expand("$HOME/.pub-cache"),
            vim.fn.expand("$HOME/flutter/"),
        },
        updateImportsOnRename = true,
        completeFunctionCalls = true,
        showTodos = true,
    },
},

})
