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

## Leap

Press `s` or `S`, type two characters that appear anywhere on screen, and press the single-key label to jump to the one you want.

## LSP Stuff

1. LSP status: Open an Elixir file and run :LspInfo - you should see expert listed as attached
2. Completion: In an Elixir file, type Enum. and see if you get autocompletion suggestions
3. Go-to-definition: Put cursor on a function call and press <C-]> (your configured keybind for definition)
4. Diagnostics:
  - Write some invalid Elixir syntax and see if you get error highlights
  - Navigate between diagnostics with [d (previous) and ]d (next)
5. Hover documentation: Put cursor on a built-in function like IO.puts and press K (your hover keybind)

Additional LSP features available:

- Rename: <LocalLeader>R to rename symbols
- Code actions: <LocalLeader>a for available code actions
- References: <LocalLeader>r to find references
- Symbols: <LocalLeader>s for document symbols, <LocalLeader>S for workspace symbols
- Diagnostics: <LocalLeader>d to open diagnostic float
- Format: <LocalLeader>f to format code (if supported)
