local status, fluttertools = pcall(require, "flutter-tools")
if not status then
	return
end

fluttertools.setup({})
