local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

return {
  s({ trig = "funcdox", dscr = "comment for a function" },
    fmta(
      [[
      /**
       * <brief>
       *
       * <detail>
       *
       * \param <input> <description>
       * \return <return_value>
       *
       */<end_position>
    ]],
      {
        brief = i(1, "A one-line summary."),
        detail = i(2, "A more detailed description"),
        input = i(3, "test"),
        description = i(4, "Description of the parameter"),
        return_value = i(5, "Defines the return value"),
        end_position = i(0),
      }
    )
  ),
  s({ trig = "simple", dscr = "simple command for classes" },
    fmta(
      [[
      /**
       * <>
       *
       * <>
       */<>
    ]],
      -- The insert node is placed in the <> angle brackets
      {
        i(1, "A one-line summary."),
        i(2, "A more detailed description"),
        i(0),
      }
    )
  ),
  s({ trig = "@param", dscr = "Type and description of a function parameter" },
    fmta(
      [[
      \param <name> <type_dscr><end_position>
    ]],
      -- The insert node is placed in the <> angle brackets
      {
        name = i(1, "{name of the parameter}"),
        type_dscr = i(2, "{Type and description}"),
        end_position = i(0),
      }
    )
  ),
  s({ trig = "@paramin", dscr = "Type and description of a function parameter" },
    fmta(
      [[
      \param[in] <name> <type_dscr><end_position>
    ]],
      -- The insert node is placed in the <> angle brackets
      {
        name = i(1, "{name of the parameter}"),
        type_dscr = i(2, "{Type and description}"),
        end_position = i(0),
      }
    )
  ),
  s({ trig = "@return", dscr = "Type and description of a return value" },
    fmta(
      [[
      \return <name> <type_dscr><end_position>
    ]],
      -- The insert node is placed in the <> angle brackets
      {
        name = i(1, "{name of the return}"),
        type_dscr = i(2, "{Type and description}"),
        end_position = i(0),
      }
    )
  ),
  s({ trig = "oneline", dscr = "single line variable comment" },
    fmta(
      [[
      /**
       * <>
       */<>
    ]],
      -- The insert node is placed in the <> angle brackets
      {
        i(1, "A one-line summary."),
        i(0),
      }
    )
  ),
}
