# Vim and kitty terminal emulator config

Here is my config to make Vim as an IDE using kitty terminal

* build-in bash terminal
* NERDTree to navigate through working directory
* Gruvbox theme
* Droid Sans Mono Fonts
  
  
![Alt text](<Screenshot from 2023-09-28 22-20-35.png>)

#### Prerequisities:

* Install Vim-PLug <pre>$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

* Install Font manager <pre>$ sudo apt install font-manager

* To Use Droid Sans Mono fonts dowmload them [here](https://www.fontsquirrel.com/fonts/download/droid-sans) and add tts file to font-manager

## How to install

* Clone the repo  <pre>$ git clone git@github.com:Antoineloiseau1/Configs.git'

### Vim config

1. Go to Vim folder <pre>$ cd Vim
2. Copy Vim folder content into .vim folder: <pre>$ cp -r \*/** ~/.vi
3. Copy .vimrc to Home directory <pre>$ cp .vimrc ~/
4. Install plugins in .vimrc file <pre>$ vim .vimrc  
:PlugInstall

### Kitty Config

* Install Kitty <pre>$ sudo apt install kitty
* Copy Kitty folder <pre>$ cp kitty/ ~/.config/

## TIPS:

You can use <ctrl + arrows> to navigate through different buffers