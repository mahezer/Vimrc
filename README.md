# Vimrc

### Description

This is my .vimrc file. Which means this is the configuration file for Vim I use. Which means I use Vim as my main editor, even though I'm a complete noob with it.

### Installation

You'll need Vim. It's basically everywhere. If you use a Linux distro, you probably already have it. If not, you can get it [here](http://www.vim.org/download.php).
WARNING: This command will replace your .vimrc with mine, and your .vim file with my stuff, run it a your own risk.
If you run
```sh
$ make setup
```
the Makefile will copy this vimrc into yours, and its dependencies on your .vim folder. As this project was made (1) for me to clone it everywhere I code and to maintain a single .vimrc and (2) for beginners, I expect your .vimrc file to be empty/non-existant. I will NOT work to integrate this project with another .vimrc. Which means it is not a plug-and-play repo(yet).
After that, enter you new .vimrc file and type ":PlugInstall", without the quotes, hit Enter, to make your vim work like mine. You won't see any immediate change, as vim needs to re-run its config file for the plugins to work, you can either close vim and enter again, or type ":so%", without quotes, hit Enter, and voilà. There you have it.

### Stuff to keep in mind

I'm a noob with Vim. Everything in this .vimrc was added as I felt that something was missing, which is why I feel this is a great .vimrc for beginners. I use [junegunn's vim-plug](https://github.com/junegunn/vim-plug) as plugin manager

### Contribution

Feel free to submit Pull Requests on this repo, just make sure to explain what the heck you just did, so I can learn more and more about Vim and stuff.

### License

MIT. Do whatever you want with it.
