# Dotfiles

## i3 Window Manager

| Group                             | Description  | Shortcut                |
|-----------------------------------|--------------|-------------------------|
| Application                       | Firefox      | mod+i                   |
| Application                       | Signal       | mod+c                   |
| Application                       | neomutt      | mod+m                   |
| Application                       | vifm         | mod+o                   |
| Application                       | Newsboat     | mod+n                   |
| Screenshot                        | Desktop      | Print                   |
| Screenshot                        | Window       | $mod+Print              |
| Screenshot                        | Selection    | mod+Shift+Print         |
| Menu                              | Open         | mod+d                   |
| Kill Focused Window               | Kill Focused | mod+Shift+q             |
| Switch Focus                      | Left         | mod+j                   |
| Switch Focus                      | Down         | mod+k                   |
| Switch Focus                      | Up           | mod+l                   |
| Switch Focus                      | Right        | mod+semicolon           |
| Move Focused Window               | Left         | mod+j                   |
| Move Focused Window               | Down         | mod+k                   |
| Move Focused Window               | Up           | mod+l                   |
| Move Focused Window               | Right        | mod+semicolon           |
| Split                             | Horizontal   | mod+h                   |
| Split                             | Vertical     | mod+v                   |
| Fullscreen                        | Toggle       | mod+f                   |
| Change Container Layout           | Stacking     | mod+s                   |
| Change Container Layout           | Tabbed       | mod+w                   |
| Change Container Layout           | Toggle Split | mod+e                   |
| Tile / Floating                   | Toggle       | mod+Shift+Space         |
| Focus                             | Parent       | mod+a                   |
| Switch Workspace                  | Switch       | mod+workspace #         |
| Moved Focused Window to Workspace | Move         | mod+Shift+workspace #   |
| Reload the configuration file     | Reload       | mod+Shift+c             |
| Restart i3                        | Restart      | mod+Shift+r             |
| Exit i3                           | Exit         | mod+Shift+e             |
| Lockscreen                        | Lock         | mod+Shift+x             |
| Resize Window                     | Resize Mode  | mod+r                   |
| Resize - Shrink Width             | Width -      | j                       |
| Resize - Grow Width               | Width +      | k                       |
| Resize - Shrink Height            | Height -     | l                       |
| Resize - Shrink Height            | Height +     | ;                       |

## neovim

Custom Vi setup

### Plugins

* Plug 'bling/vim-airline'
* Plug 'chrisbra/NrrwRgn'
* Plug 'christoomey/vim-tmux-navigator'
* Plug 'easymotion/vim-easymotion'
* Plug 'editorconfig/editorconfig-vim'
* Plug 'junegunn/fzf.vim'
* Plug 'majutsushi/tagbar'
* Plug 'rbgrouleff/bclose.vim'
* Plug 'scrooloose/nerdcommenter'
* Plug 'scrooloose/nerdtree'
* Plug 'ryanoasis/vim-devicons'
* Plug 'terryma/vim-multiple-cursors'
* Plug 'tpope/vim-fugitive'
* Plug 'tpope/vim-surround'
* Plug 'vimwiki/vimwiki'
* Plug 'ludovicchabant/vim-gutentags'
* Plug 'neoclide/coc.nvim'
* Plug 'lifepillar/pgsql.vim'
* Plug 'tclh123/vim-thrift'
* Plug 'NLKNguyen/papercolor-theme'

### Keymaps

#### General

* , LEADER
* ,bg Toggle Colors

#### Search

* ,c Clear search highlights

#### Navigation

* \<S-Left\> Previous Buffer
* \<S-Right\> Next Buffer

* ,w buffer close

* \<c-h\> TMUX Left
* \<c-j\> TMUX Down
* \<c-k\> TMUX Up
* \<c-l\> TMUX Right
* \<c-\\> TMUX Previousq

#### Files

* ,d Nerdtree toggle
* \<F2\> Nerdtree toggle

#### Splits

* ,v Vertical Split
* ,h Horizontal Split

#### Code

* gd definition
* gy type definition
* gi implimentation
* gr references

* [g diag prev
* ]g diag next

* ,a Codeaction selected
* ,f Format selected code

* \<space\>a diag
* \<space\>e ext
* \<apace\>o outline
* \<space\>s symbols
* \<space\>j next
* \<space\>k prev
* \<space\>p list resume

* \<F3\> Tag bar toggle

#### Commands

* :Format Formatter
* :Fold Fold function
* :OR Organize imports

## TMUX

Windows(tabs)

* c  create window
* w  list windows
* n  next window
* p  previous window
* f  find window
* ,  name window
* &  kill window

Panes (splits)

* %  vertical split
* "  horizontal split
* o  swap panes
* q  show pane numbers
* x  kill pane
* `+`  break pane into window (e.g. to select text by mouse to copy)
* `-`  restore pane from window
* ⍽  space - toggle between layouts
* prefix + q (Show pane numbers, when the numbers show up type the key to goto
that pane)
* prefix + { (Move the current pane left)
* prefix + } (Move the current pane right)
* prefix + z toggle pane zoom

Navigation

* prefix + h
* select pane on the left
* prefix + j
* select pane below the current one
* prefix + k
* select pane above
* prefix + l
* select pane on the right

Note: This overrides tmux's default binding for toggling between last active
windows, prefix + l. tmux-sensible gives you a better binding for that,
prefix + a (if your prefix is C-a).

Resizing panes

* prefix + shift + h
* resize current pane 5 cells to the left
* prefix + shift + j
* resize 5 cells in the up direction
* prefix + shift + k
* resize 5 cells in the down direction
* prefix + shift + l
* resize 5 cells to the right

These mappings are repeatable.

The amount of cells to resize can be configured with @pane_resize option. See
configuration section for the details.

Splitting panes

* prefix + |
* split current pane horizontally
* prefix + -
* split current pane vertically

Newly created pane always has the same path as the original pane.

Swapping windows

* prefix + < - moves current window one position to the left
* prefix + > - moves current window one position to the right

Copy mode bindings

* y - copy selection to system clipboard
* Y (shift-y) - "put" selection - equivalent to copying a selection, and
pasting it to the command line
* Alt-y - performs both of the above: copy to system clipboard and put to
command line

Search

* prefix + / - regex search (strings work too)

Example search entries:

* foo - searches for string foo
* [0-9]+ - regex search for numbers

Grep is used for searching.  Searches are case insensitive.

Predefined searches

* prefix + ctrl-f - simple file search
* prefix + ctrl-g - jumping over git status files (best used after git status
command)
* prefix + ctrl-u - url search (http, ftp and git urls)
* prefix + ctrl-d - number search (mnemonic d, as digit)
* prefix + alt-i - ip address search

These start "copycat mode" and jump to first match.

"Copycat mode" bindings

These are enabled when you search with copycat:

* n - jumps to the next match
* N - jumps to the previous match

To copy a highlighted match:

* Enter - if you're using Tmux vi mode
* ctrl-w or alt-w - if you're using Tmux emacs mode
* Copying a highlighted match will take you "out" of copycat mode. Paste with
prefix + ] (this is Tmux default paste).

Key bindings

* prefix + Ctrl-s - save
* prefix + Ctrl-r - restore

TPM Installation of Plugins

* prefix + I

installs new plugins from github or any other git repo
refreshes TMUX environment

* prefix + U

updates plugin(s)

* prefix + g - prompts for session name and switches to it. Performs 'kind-of'
name completion.

Faster than the built-in prefix + s prompt for long session lists.

* prefix + C (shift + c) - prompt for creating a new session by name.
* prefix + S (shift + s) - switches to the last session.

The same as built-in prefix + L that everyone seems to override with some other binding.
prefix + @ - promote current pane into a new session.
Analogous to how prefix + ! breaks current pane to a new window.

[https://gist.github.com/MohamedAlaa/2961058](https://gist.github.com/MohamedAlaa/2961058)
