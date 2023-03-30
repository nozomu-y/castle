local status, csvtools = pcall(require, "csvtools")
if not status then
	return
end

csvtools.setup({
	before = 100,
	after = 100,
	clearafter = false,
	-- this will clear the highlight of buf after move
	showoverflow = false,
	-- this will provide a overflow show
	titelflow = false,
	-- add an alone title
})
