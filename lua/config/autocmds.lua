vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
	callback = function()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none"}) 
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
})
