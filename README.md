# Vim and kitty terminal emulator config

Here is my config to make Vim as an IDE using kitty terminal

* build-in bash terminal
* NERDTree to navigate through working directory
* Use of Snippets
* Gruvbox theme
* Droid Sans Mono Fonts
  
  
![Alt text](<Screenshot from 2023-09-28 22-20-35.png>)

#### Prerequisities:

* Install Vim-PLug <pre>$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

* Install Font manager <pre>$ sudo apt install font-manager

* To Use Droid Sans Mono fonts download them [here](https://www.fontsquirrel.com/fonts/download/droid-sans) and add tts file to font-manager. (You can also use your favorit terminal)

## How to install

* Clone the repo  <pre>$ git clone git@github.com:Antoineloiseau1/Configs.git'

### Vim config

1. Copy .vim folder and .vimrc to home directory: <pre>$ cp -r .vim ~/ && cp .vimrc ~/
2. Install plugins in .vimrc file <pre>$ vim ~/.vimrc  
:PlugInstall

### Kitty Config

* Install Kitty <pre>$ sudo apt install kitty
* Copy Kitty folder <pre>$ cp kitty/ ~/.config/

## TIPS:

* You can use <ctrl + arrows> to navigate through different buffers  

* Open terminal using: ",ot" (',' as key Leader by default)
* You can use C++ snippets (see snippets definition in .vim/Ultisnips/cpp.snippets) ex:<pre>def+[tab] would result:  
#ifnef [INPUT_FILENAME]_HPP
#define [MIRROR_TO_FILE_NAME]_HPP
   
   #endif