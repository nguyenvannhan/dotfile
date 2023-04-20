local status_ok, flutter_tools = pcall(require, 'flutter-tools');

if not status_ok then
  do return end
end

flutter_tools.setup()
