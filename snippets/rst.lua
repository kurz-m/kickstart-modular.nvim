-- SPDX-FileCopyrightText: 2024 Agathe Porte
--
-- SPDX-License-Identifier: MIT

return {
	----------------------------------------------------------------------------
	-- restructuredText specification
	-- https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html
	----------------------------------------------------------------------------

	-- Definition list
	-- https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html#definition-lists
	s("definition-list", {
		i(1, "term"),
		c(2, {
			sn(nil, {t(" : "), i(1, "classifier")}),
			t(""),
		}),
		t({"", "    "}),
		i(3, "Definition."),
		t({"", "", ""}),
		i(0),
	}),

	s("role", {
		t(":"),
		i(1, "role"),
		t(":`"),
		i(2, "content"),
		t("` "),
		i(0),
	}),

	----------------------------------------------------------------------------
	-- restructuredText directives
	-- https://docutils.sourceforge.io/docs/ref/rst/directives.html
	----------------------------------------------------------------------------

	-- Image directive
	-- https://docutils.sourceforge.io/docs/ref/rst/directives.html#image
	s("image", {
		t(".. img:: "),
		i(1, "image.png"),
		t({"", "    :alt: "}),
		i(2, "Alternative text"),
		t({"", "", ""}),
		i(0),
	}),

	-- Figure directive
	-- https://docutils.sourceforge.io/docs/ref/rst/directives.html#figure
	s("figure", {
		t(".. figure:: "),
		i(1, "image.png"),
		t({"", "    :alt: "}),
		i(2, "Alternative text"),
		t({"", "", "    "}),
		i(3, "Legend of the figure "),
		t({"", "", ""}),
		i(0),
	}),

	----------------------------------------------------------------------------
	-- Spinx-specific roles
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html
	----------------------------------------------------------------------------

	-- Code (inline)
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-code
	s("code", {
		t(":code:`"),
		i(1, "1 + 2"),
		t("` "),
		i(0),
	}),

	-- Declare custom role to have inline code with syntax highligthing
	--
	-- Example:
	--
	-- .. role:: python(code)
	--     :language: python
	--
	s("code-inline-role", {
		t(".. role:: "),
		i(1, "language"),
		t({"(code)", "    :language: "}),
		f(function(args, snip)
			return args[1]
		end, {1}),
		t({"", "", ""}),
		i(0),
	}),

	-- Math
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-math
	s("math", {
		t(":math:`"),
		i(1, "a^2 + b^2 = c^2"),
		t("` "),
		i(0),
	}),

	-- Other semantic markup
	--
	-- The following roles don’t do anything special except formatting the text
	-- in a different style.
	
	-- Abbreviation
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-abbr
	s("abbr", {
		t(":abbr:`"),
		i(1, "ABBR"),
		t(" ("),
		i(2, "description"),
		t(")` "),
		i(0),
	}),

	-- Command
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-command
	s("command", {
		t(":command:`"),
		i(1, "command"),
		t("` "),
		i(0),
	}),

	-- File
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-file
	s("command", {
		t(":command:`"),
		i(1, "command"),
		t("` "),
		i(0),
	}),

	-- Keyboard strokes
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-kbd
	s("kbd (keyboard-strokes)", {
		t(":kbd:`"),
		i(1, "Control-C Control-V"),
		t("` "),
		i(0),
	}),

	-- Manpage
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-manpage
	s("manpage", {
		t(":manpage:`"),
		i(1, "ls(1)"),
		t("` "),
		i(0),
	}),

	-- Regexp
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-regexp
	s("regexp", {
		t(":regexp:`"),
		i(1, "([abc])+"),
		t("` "),
		i(0),
	}),
	
	-- Sample
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html#role-samp
	s("sample", {
		t(":samp:`"),
		i(1, "foo_bar_{variable}"),
		t("` "),
		i(0),
	}),

	-- Code block
	-- https://www.sphinx-doc.org/en/master/usage/restructuredtext/directives.html#directive-code-block
	s("codeblock", {
		t(".. code-block:: "),
		i(1, "language"),
		t({"", "", "    "}),
		i(2, "code"),
		t({"", "", ""}),
		i(0),
	}),
}
