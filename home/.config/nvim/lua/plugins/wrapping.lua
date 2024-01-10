local status, wrapping = pcall(require, "wrapping")
if not status then
	return
end

wrapping.setup({
	auto_set_mode_filetype_allowlist = {
		"asciidoc",
		"gitcommit",
		"latex",
		"mail",
		"markdown",
		"rst",
		"tex",
		"text",
	},
})
