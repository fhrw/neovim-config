local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.completion.spell,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.gofmt,
		null_ls.builtins.formatting.elm_format,
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.formatting.rustfmt,
		null_ls.builtins.formatting.purs_tidy,
		null_ls.builtins.diagnostics.cppcheck,
	},
})
