
# Neovim Configuration Guide


## ⚙️ Installation

### 1. Install Neovim (v0.9+)
```bash
# Ubuntu/Debian
sudo apt install neovim

# macOS
brew install neovim
```

### 2. Install vim-plug (Plugin Manager)

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs\
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```



## 🔧 Configuration

### Basic Settings

Create `~/.config/nvim/init.vim` with: vim

Copy the `init.vim` file from the repo to init.vim of your local machine

### Post-Installation
---------------

1.  **Install Plugins**:

```bash
nvim +PlugInstall +qall
```
2.  **System Dependencies**:
```bash
# For FZF (Linux)
sudo apt install ripgrep silversearcher-ag

# Nerd Font (Required for icons)
# Download from: https://www.nerdfonts.com
```

3.  **Coc Extensions**:

```bash
:CocInstall coc-python coc-json coc-snippets
```



## Keybindings

| Key Combo | Command | Description |
| --- | --- | --- |
| `<Ctrl> + t` | `:NERDTreeToggle<CR>` | Toggle file tree |
| `<Ctrl> + p` | `:Files<CR>` | Fuzzy file search |
| `<Ctrl> + l` | `CocAction('jumpDefinition')` | Jump to definition |
| `<F8>` | `:TagbarToggle<CR>` | Show code structure |
| `gs` | `:CocCommand snippets.editSnippets` | Edit snippets |
| `<Leader>tt` | `:terminal<CR>` | Open terminal |

## Plugin Details

### Core Functionality

| Plugin | Description | Purpose |
|--------|-------------|---------|
| [preservim/nerdtree](https://github.com/preservim/nerdtree) | File system explorer | Browse files/folders in a tree sidebar |
| [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim) | Intellisense engine | Auto-completion, LSP integration, diagnostics |
| [junegunn/fzf](https://github.com/junegunn/fzf) + [fzf.vim](https://github.com/junegunn/fzf.vim) | Fuzzy finder | Fast file/content search (`:Files`, `:Ag`) |
| [tpope/vim-surround](https://github.com/tpope/vim-surround) | Text wrapper | Easily modify quotes/brackets/tags (`ysiw)` to wrap text) |
| [terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) | Multi-cursor editing | Sublime-style multi-selections (`Ctrl+N`) |

---

### Language Support

| Plugin | Description | Purpose |
|--------|-------------|---------|
| [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot) | Language pack | Syntax highlighting for 100+ languages |
| [lervag/vimtex](https://github.com/lervag/vimtex) | LaTeX toolkit | Compile LaTeX documents, live previews |
| [Lifepillar/pgsql.vim](https://github.com/Lifepillar/pgsql.vim) | PostgreSQL syntax | SQL highlighting and formatting |
| [ap/vim-css-color](https://github.com/ap/vim-css-color) | CSS color preview | Display hex/rgb colors inline |

---

### Visual Enhancements

| Plugin | Description | Purpose |
|--------|-------------|---------|
| [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline) | Status bar | Customizable status line with themes |
| [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons) | File icons | Show file type icons in NERDTree |
| [rafi/awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes) | Theme collection | 30+ pre-installed color schemes |

---

### Productivity Tools

| Plugin | Description | Purpose |
|--------|-------------|---------|
| [github/copilot.vim](https://github.com/github/copilot.vim) | AI pair programmer | Code suggestions via GitHub Copilot |
| [preservim/tagbar](https://github.com/preservim/tagbar) | Code structure | Outline classes/functions (`<F8>`) |
| [dkarter/bullets.vim](https://github.com/dkarter/bullets.vim) | List manager | Auto-format Markdown/Org lists |
| [tpope/vim-commentary](https://github.com/tpope/vim-commentary) | Comment toggler | Quickly comment/uncomment code (`gc`) |

---

### Themes

| Plugin | Description | Purpose |
|--------|-------------|---------|
| [Mofiqul/dracula.nvim](https://github.com/Mofiqul/dracula.nvim) | Dracula theme | Purple-centric dark theme |
| [drewtempelmeyer/palenight.vim](https://github.com/drewtempelmeyer/palenight.vim) | Palenight theme | Material-inspired dark scheme |
| [rakr/vim-one](https://github.com/rakr/vim-one) | One theme | Atom-like dark/light theme |
| [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim) | OneDark variant | Popular VS Code theme port |

---

### Utilities

| Plugin | Description | Purpose |
|--------|-------------|---------|
| [glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim) | Startup screen | Customizable welcome screen with shortcuts |
| [tc50cal/vim-terminal](https://github.com/tc50cal/vim-terminal) | Terminal emulator | Open terminal inside Neovim (`<Leader>tt`) |
| [sinmalamburt/vim-mundo](https://github.com/sinmalamburt/vim-mundo) | Undo tree | Visualize undo history (`:MundoToggle`) |
| [RRethy/nvim-base16](https://github.com/RRethy/nvim-base16) | Theme framework | Base16 syntax highlighting support |

---

### Key Features Summary
- **File Management**: NERDTree + FZF
- **Code Intelligence**: coc.nvim + Copilot
- **Visuals**: Airline + DevIcons + Themes
- **Workflow**: Multi-cursors + Bullets.vim + Commentary

🔍 Troubleshooting
------------------

| Issue | Fix |
| --- | --- |
| Missing plugin commands | Run `:source ~/.config/nvim/init.vim` + `:PlugInstall` |
| Icons not showing | Install a Nerd Font |
| FZF slow | Install `ripgrep`/`fd` |
| Copilot not working | Run `:Copilot setup` |

* * * * *

**Star this repo ⭐ if you find it useful!**

**
