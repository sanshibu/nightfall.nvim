local M = {}

function M.highlight(group, opts)
	local style = opts.style and "gui=" .. opts.style or "gui=NONE"
	local fg = opts.fg and "guifg=" .. opts.fg or "guifg=NONE"
	local bg = opts.bg and "guibg=" .. opts.bg or "guibg=NONE"
	local sp = opts.sp and "guisp=" .. opts.sp or ""

	local hl = table.concat({
		"highlight",
		group,
		style,
		fg,
		bg,
		sp,
	}, " ")

	vim.cmd(hl)
end

return M
