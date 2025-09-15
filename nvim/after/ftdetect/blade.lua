vim.filetype.add({
  pattern = {
    -- qualquer caminho que termine com .blade.php
    [".*%.blade%.php"] = "blade",
  },
})
