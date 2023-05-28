local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'lua_ls',
	'rust_analyzer',
	'dockerls',
	'docker_compose_language_service',
	'jsonls',
	'marksman',
})

lsp.set_preferences({
	sign_icons = {}
})

lsp.setup()
