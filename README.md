# NeoVim custom setup

- [Installation](#installation)
- [Useful resources](#useful-resources)
- [LSP Notes](#lsp-notes)
  - [Javascript NodeJs](#javascript-nodejs)
  - [Rust / Tailwind etc..](#rust-tailwind-etc)

## Installation

```bash
sudo snap nvim --classic
```

For the system requirements look at the `Dockerfile`
The config won't work inside a Docker container, the system requirements for `Debian` are the same.
For `Windows` you need to have a `C` compiler installed, e.g. `gcc`

## Useful resources

The configuration is inspired by the following repository:

- [ThePrimeagen/init.lua](https://github.com/ThePrimeagen/init.lua)
  - [0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE&t=1244s)
- [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public)
  - [Neovim setup for tailwindcss/react/typescript](https://dev.to/craftzdog/my-neovim-setup-for-react-typescript-tailwind-css-etc-58fb)

## LSP Notes

### Javasscript NodeJS

To enable code completion and autosuggestion be sure that in your default node project you have `ESLint` installed. If not CD into your node projetc and then:

```bash
npx eslint --init
```

or

```bash
npm init @eslint/config
```

### Rust / Tailiwnd etc

Be sure you're inside a Rus/Tailwind project.
For Python/Docker just open a python file
