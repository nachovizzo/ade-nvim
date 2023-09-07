# ADE Neovim

- This project generates an [Neovim](https://neovim.io/) volume for [`ade`](https://gitlab.com/ApexAI/ade-cli)

### It's not just Neovim

Well... Neovim alone is not so useful. That's why this small volume it's packed with some power tools:

- NodeJS
- clangd
- Some of my [dotfiles](https://github.com/nachovizzo/dotfiles.git)

Tools to be included in the meantime:

- [ ] clang-format
- [ ] tmux
- [ ] tmuxinator
- [ ] Homebrew and solve life

### How to use

- In the `.aderc` file add, `ignaciovizzo/ade-nvim:latest` to the list of `ADE_IMAGES`: e.g.

```sh
export ADE_IMAGES="
  <ADE_BASE_IMAGE>:latest
  ignaciovizzo/ade-nvim:latest
"
```

### Installing plugins automatically

WIP...
