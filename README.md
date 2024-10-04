# .dotfiles (Personal)

Here are the current dotfiles for my Debian system. You are free to give this
config a try! I am looking forward to a minimalist setup (the number of stored
dotfiles may change!).

## Requirements

Make sure to have the following installed (use your preferred method):

- `git` / `stow`

- **NOTES:**
    - Other dependencies may be required. Refer to the GitHub pages of the
installed plugins;
    - Some features may require the usage of a [Nerd Font](https://www.nerdfonts.com/).
Check out this [repo](https://github.com/ryanoasis/nerd-fonts)
and an alternative [installation tutorial](https://linuxtldr.com/install-fonts-on-linux/).

## Installation

**1st** Check out the `.dotfiles` repo in your `$HOME` directory with `git`:

```
git clone git@github.com:nunocsao/.dotfiles.git
cd .dotfiles
```

**2nd** Use GNU `stow` to create symlinks:

- **NOTES:** 
    - Do not forget to convert the already existent dotfiles to backups!
(`.bak` OR `.old`);
    - Make sure that configuration directories are created!
(*Ex.:* `mkdir ~/.config/tmux`).

```
stow .
```

## Post-Install Actions

- **For Vim:**

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

> **Run `:PlugInstall` inside Vim!**

- **For tmux:**

```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

> **Run `<prefix>I` inside tmux!**

### Credits

Because I looked up at these people for much of my setup, consider looking at
their content:

- **ThePrimeagen:** [@Youtube](https://www.youtube.com/@ThePrimeagen) |
[@GitHub](https://github.com/ThePrimeagen)
- **TJ DeVries:** [@Youtube](https://www.youtube.com/@teej_dv) |
[@GitHub](https://github.com/tjdevries)
- **Nir Lichtman:** [@Youtube](https://www.youtube.com/@nirlichtman) |
[@GitHub](https://github.com/nir9)
- **William Shotts:** [@LinuxCommand.org](https://www.linuxcommand.org/index.php)

### Extras

If need be, here is [useful information](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
on setting up SSH connections.

For those interested in a more advanced Debian installation, refer to Drew's
excellent content here!
- **JustAGuy Linux:** [@Youtube](https://www.youtube.com/@JustAGuyLinux) |
[@GitHub](https://github.com/drewgrif)

#### Side-NOTES

The content above is intended for usage in pure Linux. For Windows users, here
is an interesting reference for setting up a coding environment:

- **TechWithCosta:** [@Youtube](https://www.youtube.com/@TechWithCosta)



