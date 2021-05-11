# setup-mac

Install applications for development.

## Requirements

- [Homebrew](https://github.com/Homebrew/brew)
- [Homebrew Cask](https://github.com/Homebrew/homebrew-cask)
- [mas](https://github.com/mas-cli/mas)

## Installation

1. installing homebrew
2. installing mas from homebrew
3. installing rosetta2 (only mac M1)

```
sudo softwareupdate --install-rosetta
```

4. login to apple store
5. install tools

```
brew bundle
```

6. setup tools

```
cd /path/to/setup-mac
sh setup-shell/*
```