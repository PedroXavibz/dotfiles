return {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- importante para Neovim
      },
      diagnostics = {
        globals = { "vim" }, -- isso remove o erro de undefined global 'vim'
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
        checkThirdParty = false, -- evita aviso chato do LSP
      },
      telemetry = { enable = false },
    },
  },
}
