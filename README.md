``# NeoVim custom setup

- [Installation](#installation)
- [Useful resources](#useful-resources)
- [LSP Notes](#lsp-notes)
  - [Javascript NodeJs](#javascript-nodejs)
  - [Rust / Tailwind etc](#rust-/-tailwind-etc)
- [Tagbar plugin](#tagbar-plugin)
  - [Exuberant ctags](#exuberant-ctags)
  - [Universal ctags](#universal-ctags)

## Installation

```bash
sudo snap nvim --classic
```

For the system requirements look at the `Dockerfile`
The config won't work inside a Docker container, the system requirements for `Debian` are the same.
For `Windows` you need to have a `C` compiler installed, e.g. `gcc`

For the font Downaload one custom font type from [Nerdfonts](https://www.nerdfonts.com/font-downloads) and unpack it in `~/.local/share/fonts` close and reopen the terminal and change the font format from the preferences.

## Useful resources

The configuration is inspired by the following repository:

- [ThePrimeagen/init.lua](https://github.com/ThePrimeagen/init.lua)
  - [0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE&t=1244s)
- [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public)
  - [Neovim setup for tailwindcss/react/typescript](https://dev.to/craftzdog/my-neovim-setup-for-react-typescript-tailwind-css-etc-58fb)
- [vim-surround keymaps](https://github.com/tpope/vim-surround/blob/master/doc/surround.txt)
- [numToStr/Comments keympas](https://github.com/numToStr/Comment.nvim/blob/master/doc/Comment.txt)

## LSP Notes

### Javascript NodeJS

To enable code completion and autosuggestion be sure that in your default node project you have `ESLint` installed. If not CD into your node projetc and then:

```bash
npx eslint --init
```

or

```bash
npm init @eslint/config
```

### Rust / Tailwnd etc

Be sure you're inside a Rus/Tailwind project.
For Python/Docker just open a python file

## Tagbar plguin

uses the `'preservim/tagbar'` Nvim plugin.
Provide a TagBar toogle to view a the code file is structured through running the `:TagbarToggle` commadnd.

NOTE: For the plugin to work you need the `exuberant ctags` package installed to your `$PATH` or set in the `init.lua` file thorugh `vim.g.tagbar_ctags_bin`

### Exuberant ctags

- [Official exuberant ctags webiste](https://ctags.sourceforge.net/)
- [Installation guide](https://installati.one/install-exuberant-ctags-ubuntu-20-04/)

```bash
sudo apt-get update
sudo apt-get -y install exuberant-ctags
```

Open the Tagbar by `<leader>T` in normal mode.

### Universal Ctags

- [Official Github page](https://github.com/universal-ctags/ctags)
- [Official installation guide](https://docs.ctags.io/en/latest/autotools.html)

The default implementation of Exuberant Ctags is not comprehensive, it doesn't support languages as `Rust` and `Typescript` for example.
In this case you can install `Universal Ctags`
To make the changes effetcitve be sure to have uninstalled the default `Exuberant Ctags` configuration by:

```bash
sudo apt-get remove exuberant-ctags
```
