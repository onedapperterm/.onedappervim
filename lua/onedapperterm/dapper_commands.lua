local function create_custom_commands()
      vim.api.nvim_create_user_command('FourSpace', function()
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.expandtab = true
        print("Tab and shift width set to 4")
      end, {})

end

create_custom_commands()
