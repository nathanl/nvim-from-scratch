## Leader keys

space is global leader key, comma is local, no inherent difference but you can use them differently
local leader key is comma, Nick uses for buffer-specific actions, like LSP related stuff
comma s get symbols, can find functions in file for example, and fuzzy find
comma d for diagnostics shows more detail on errors and such

## Telescope

`space` + `f` for files, `g` for grep. Arrows to scroll between matches; `control+d/u` to scroll the file preview on the right.
enter to open, `control + v` to open in a vertical split.
`space space` shows open buffers.

`:Telescope` and tab to explore, `control + n/p` to scroll.
`:Telescope diagnostics` to look at all errors

## NVimTree

`space e f` to get a file tree or toggle it off. (when opened the editor it's dirvish, more like netrw)
`-` goes up a directory
`:e %` and tab will autocomplete in the same directory, can use that in stuff like `!mkdir %` and tab.

## Treesitter

Treesitter uses known grammars to parse language code, exposes commands to perform on the AST, so upgrade’s editor’s understanding from basically regex-based to semantic understanding - this is a function, this is an optional parameter. Way better syntax highlighting is one effect. `:TSInstall vimdoc` installs parser for vimdocs

## LSP

Gives autocomplete, jump to definition, etc.

`control n/p` to scroll, enter to choose
`:LspInfo` says this buffer is attached to the client.

Mason got the external dependencies that Vim needs, doesn't put them in a system path.

## Lazy.vim

Plugin manager.
Is complex but complexity is almost all optional, can be used more simply but can say things like “don’t load this plugin until I open this file type” or whatever

## whichkey

Eg, if you hit space, it shows you the things you can press next.
