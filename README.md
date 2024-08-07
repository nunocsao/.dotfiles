# My dotfiles

Here are the current dotfiles for my system.  
Feel free to use them and provide ideas if you find any!
I like to have an overall minimalist experience.

## Requirements

Make sure to have the following installed:  
(Use your preferred method)

* **git / stow**

## Installation

**1st** Check out the '.dotfiles' repo in the $HOME directory with git:

```
$ git clone git@github.com:nunocsao/.dotfiles.git
$ cd .dotfiles
```

**2nd** Use GNU stow to create symlinks:

**(NOTE:** Do not forget to convert the already existent dotfiles to backups:
*.bak* || *.sav* **!)**

```
$ stow .
```

## Post-Install Actions

- **For Vim:**

```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

> **Run *`:PlugInstall`* inside Vim!**

```
$ mkdir ~/.vim/colors
$ cp ~/.vim/plugged/vim/colors/* ~/.vim/colors/
$ # Optional: remove extra colorscheme files
$ rm -fr ~/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/*
```

- **For tmux:**

```
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

> **Run *`<prefix>I`* inside tmux!**

### Extra

If need be, check out info on [generating](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
and [adding](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) SSH keys.

Some app features require the usage of a [Nerd Font](https://www.nerdfonts.com/).
Check out this [repo](https://github.com/ryanoasis/nerd-fonts)
and [an alternative installation tutorial](https://linuxtldr.com/install-fonts-on-linux/).

Check out [this video](https://www.youtube.com/watch?v=mJ-qvsxPHpY) for 
an insanely easy intro to Git!!!


