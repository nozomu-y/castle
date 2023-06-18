local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		offsets = { { filetype = "NvimTree", text = "NvimTree", padding = 1 } },
		-- buffer_close_icon = "",
		buffer_close_icon = "",
	},
})
