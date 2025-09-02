local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("html5", {
    t({
      "<!DOCTYPE html>",
      "<html lang=\"en\">",
      "<head>",
      "  <meta charset=\"UTF-8\">",
      "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">",
      "  <title>",
    }),
    i(1, "Título da página"),
    t({
      "</title>",
      "</head>",
      "<body>",
      "  ",
    }),
    i(0),
    t({
      "",
      "</body>",
      "</html>",
    }),
  }),

  -- Atalho para script
  s("script", {
    t("<script src=\""),
    i(1, "app.js"),
    t("\"></script>"),
  }),

  -- Atalho para link css
  s("css", {
    t("<link rel=\"stylesheet\" href=\""),
    i(1, "style.css"),
    t("\">"),
  }),
}
