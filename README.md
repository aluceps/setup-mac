# setup-mac

macの初期状態を想定して次の手順でターミナル環境を整える。

## Installation

1. iTerm2
1. Homebrew
1. fish
1. fonts
1. etc

## iTerm2

- [iTerm2](https://iterm2.com/)

### settings

- Settings > Profiles > Colors > uncheck Use separate colors for light and dark mode
- Settings > Profiles > Terminal > check Unlimited scrollback

## Homebrew

1. zsh環境で[Homebrew](https://brew.sh/ja/)をインストール
2. インストール後のメッセージに従いパスを通す

```sh
$ (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/xxxxx/.zprofile
$ eval "$(/opt/homebrew/bin/brew shellenv)"
```
## fish

1. fishのインストール

```sh
$ brew install fish
```

2. デフォルトシェルの変更

```sh
$ type fish
fish is /opt/homebrew/bin/fish

$ sudo echo "/opt/homebrew/bin/fish" >> /etc/shells
$ chsh -s /opt/homebrew/bin/fish
```

### tools

```
brew install ghq git peco scrcpy tig vim
```

### fisher

1. プラグインマネージャ[fisher](https://github.com/jorgebucaran/fisher)のインストール

```sh
$ curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```

2. プラグインのインストール

- [bobthefish](https://github.com/oh-my-fish/theme-bobthefish)
- [plugin-peco](https://github.com/oh-my-fish/plugin-peco)
- [fish-ghq](https://github.com/decors/fish-ghq)

## fonts

- [Powerline fonts](https://github.com/powerline/fonts)

```
SourceCodePro Nerd Font 13pt
```

## etc

- [dotfiles](dotfiles)
- [plugins](setup-shell)
- [vscode](docs/setup_vscode.md)
- [java](docs/setup_java.md)
