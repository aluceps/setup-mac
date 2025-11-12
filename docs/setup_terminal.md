# setup terminal

## git

### common

```sh
$ git config --global user.name "your name"
$ git config --global user.email "your@mail.com"
$ cat ~/.gitconfig
```

### another

```sh
$ cd /path/to/repository
$ git config user.name "your name"
$ git config user.email "your@mail.com"
$ cat .git/config
```

## github

### 複数アカウント

1. ssh鍵を作成

```sh
$ cd ~/.ssh
$ ssh-keygen -t ed25519 -C "your_email@example.com" -f "id_any_name"
```

2. configへ設定追加

```
Host github.com.another
    HostName github.com
    User git
    Port 22
    IdentityFile ~/.ssh/id_any_name
    TCPKeepAlive yes
    IdentitiesOnly yes
```

3. githubに登録

```sh
$ pbcopy < ~/.ssh/id_any_name.pub
```

4. リモートURLの変更

```sh
$ git remote -v
origin	git@github.com/username/repository-name.git (fetch)
...

$ git remote set-url origin git@github.com.another:username/repository-name.git
```

## vim

https://github.com/Shougo/dein.vim

Basic installation とあったが、よく分からなかったので Command line installation を参照

https://github.com/Shougo/dein-installer.vim

以下実行

```sh
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh)"
```

セットアップリポジトリの設定ファイルをコピー

```sh
$ cp -p ~/ghq/github.com/aluceps/setup-mac/dotfiles/vimrc ~/.vimrc
```
