vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 0
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"

vim.opt.cursorline = true
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bold = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#928374" })

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.R", "*.r" },
	callback = function()
		vim.fn.jobstart({ "air", "format", vim.fn.expand("%:p") }, {
			on_exit = function()
				vim.cmd("edit!")
			end,
		})
	end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.js", "*.jsx", "*.ts", "*.css", "*.html" },
	callback = function()
		vim.fn.jobstart({ "prettier", "--write", vim.fn.expand("%:p") }, {
			on_exit = function()
				vim.cmd("edit!")
			end,
		})
	end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.c", "*.h" },
	callback = function()
		vim.fn.jobstart({ "clang-format", "-i", vim.fn.expand("%:p") }, {
			on_exit = function()
				vim.cmd("edit!")
			end,
		})
	end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.lua" },
	callback = function()
		vim.fn.jobstart({ "stylua", vim.fn.expand("%:p") }, {
			on_exit = function()
				vim.cmd("edit!")
			end,
		})
	end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.rust" },
	callback = function()
		vim.fn.jobstart({ "rustfmt", vim.fn.expand("%:p") }, {
			on_exit = function()
				vim.cmd("edit!")
			end,
		})
	end,
})
