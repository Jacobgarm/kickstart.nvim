local ls = require 'luasnip'
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta
local rep = require('luasnip.extras').rep

return {
  s(
    { trig = 'exercise', dscr = 'A LaTeX exercise environment' },
    fmt( -- The snippet code actually looks like the equation environment it produces.
      [[
      \begin{tcolorbox}[title = Exercise <>]

      \end{tcolorbox}
    ]],
      -- The insert node is placed in the <> angle brackets
      { i(1) },
      -- This is where I specify that angle brackets are used as node positions.
      { delimiters = '<>' }
    )
  ),

  s({ trig = 'frac', dscr = "Expands 'frac' into '\frac{}{}'" }, {
    t '\\frac{',
    i(1), -- insert node 1
    t '}{',
    i(2), -- insert node 2
    t '}',
  }),

  s(
    { trig = '$$', dscr = "Expands '$$' into an equation" },
    fmt( -- The snippet code actually looks like the equation environment it produces.
      [[
      \[
              <>
      \]
    ]],
      -- The insert node is placed in the <> angle brackets
      { i(1) },
      -- This is where I specify that angle brackets are used as node positions.
      { delimiters = '<>' }
    )
  ),
}
