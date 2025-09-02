return {
  settings = {
    intelephense = {
      cmd = { "intelephense", "--stdio" },
      filetypes = { "php", "blade" },
      files = {
        associations = { "*.blade.php", "*.php" },
        maxSize = 5000000
      },
      root_markers = { ".git", "composer.json" },
    }
  }
}
