local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

luasnip.snipets = {
  all = {
    luasnip.parser.parse_snippet("expand", "--if you see me this shit works!")
  }
}




