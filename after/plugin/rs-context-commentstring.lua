local status_ok, comment_string = pcall(require, 'ts_context_commentstring')
if not status_ok then
  return
end

comment_string.setup({})
