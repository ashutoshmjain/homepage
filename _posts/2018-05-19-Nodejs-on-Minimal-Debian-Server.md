---
layout: post
title:  "Nodejs on a Minimal Debian Server"
date:   2018-05-19
desc: " My notes on installing Nodejs on a minimal Debian Server and other things"
keywords: "OS, linux , Debian, Nodejs, npm "
categories: [FOSS, Lab]
tags: [OS, Debian, linux, Nodejs]
icon: icon-fire-alt
---
[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.svg?v=103)](https://opensource.org/licenses/mit-license.php)
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badge/)

	Disclaimer - The contents of this article  should not be construed as consulting advice. The views are based on personal observations. They don't reflect those of author's  current or previous employers. You are free to use this article in full or parts as deemed fit as long as there is no liability on author or the publishing platform (s)



Here are my installation notes on Debian ( Stretch) minimal server and configuring it to a node server. Also installing little things that make command line a beautiful place to work. Debian minimal server doesn't has a gui and comes with minimal packages .. The best solution for trying out your hands on an older machine before you put it to real use .. 

# Minimal Server
---
- Followed  the tutorial at [How to Forge](https://howtoforge.com/tutorial/debian-minimal-server)
- Unetbootin a usb for the Debian net install
- Choose minimal server for installation. Follow the menu. 
- Grub is a problem cuz it thinks that usb is the primary device. Not sure how it worked but somehow I got to Lilo installation and it worked well there after. Had to go back in menu multiple times. 
- Installed the extra packages `openssh` `nano` and `vim nox` as they are anyway needed. 

# Static  IP
---
Followed the tutorial to give server a fixed ip . Changed the `/etc/network/interface` file exactly as the tutorial but networking stopped. So you may skip this part of the tutorial rather use the example given in man pages for `interfaces` . This restored the network and looks like I have a fixed IP now cuz IP address has not changed since many reboots over last few days . God knows what happened ! 

# SSH 
---
Most of the work (post installation ) I did on this server, was through remoting in from my Slackware desktop. Set up the ssh ID on Slackbox , added it to the ssh daemon and secure copied the key to the server. This article on [Tech Republic]( https://techrepublic.com/article/how-to-use-secure-copy-with-ssh-key-authentication) came in handy. 

# Zsh 
---
bash is great but I love zsh. 

`apt install zsh` for zsh and set it your default shell with `chsh -s /bin/zsh` . When you launch the zsh shell first time , it gives a command line based tool to configure the .zshrc . Very cool.

# Powerline Status bar for zsh
---
I install the powerline fonts before I install the status bar . `apt install fonts-powerline`

Next `apt install powerline`

Little configuration change in `.zshrc ` needed to point it to the powerline status bar. Add this line at the bottom of of the file. 

`. /usr/share/powerline/bindings/zsh/powerline.zsh`

# FBterm
---
Looks like Debian Minimal server is missing the bianries of the package `libcap2` needed set up the capabilities of FBterm. So run `apt install libcap2-bin`. Once the package is installed, runthe following command. 

	setcap 'cap_sys_tty+ep' /usr/bin/fbterm

This will allow FBTerm to use the keyboard shortcuts. Without key board shortcuts, FBTerm is pretty meaningless. 

FBterm rocks with zsh and powerline status bar. 

# Tmux
---
Tmux, among any things is a multimplexer, session manager and keeps ssh sessions alive even when you log off ( NOT power off) the computer. Installing is a breeze `apt install tmux`.  Tmux is FBTerm friendly. Means it runs very well with FbTerm. You can obviously create multiple windows with FBTerm but Tmux takes it to the new levels. For example FBTerm doesn't allow you to split a screen into multiple panes. You can do the same with other console terminals such as `dvtm` (or I guess with `i3` ) but Tmux gets lot more done. The man page for Tmux is a bit involved. If you are starting  , I would suggest this [cheat dheat](https://gist.github.com/andreyvit/2921703) 

The idea of Tmux on a server is very simple. I will be doing a lot of work on this server. Many windows with many panes. Whenever I take a break , I can detach the Tmux session and log off. Come back and attch to the same session again. Its simliar to restoring all the apps back in same state when you come back to your Mac. Only better cuz you can connect to this session from a remote computer ( or tablet ) through ssh. Whats even more - your session can have multiple ssh sessions alive. 

# Browser
---
`apt install lynx`

# Search 
---
`apt install googler`

add this line to .zshrc to open the  search results in `lynx `

`export BROWSER=lynx`

# git and github
---
`apt install git` and do the first time set of github user name and email address 

`git config --global user.name "first name . last name"`
`git config --global user.email email address`

make sure this email is same as  your git hub account; then follow [github help article ](https://help.github.com/articles/connecting-to-github-with-ssh ) for setting up and testing connection to  github


# Vim vundle 
---
We already installed `vim nox ` as part of the first tutorial. Install [vundle as git plugin manager ](https://github.com/VundleVim/Vundle.vim)

Now dump in your `.vimrc `in the home folder. You can [check out mine ](https://github.com/ashutoshmjain/homepage/blob/gh-pages/dotfiles/.vimrc) . I am planning to clean it up little more but it works well. If you use this , you will need to make a directory `.vimbackup `in your home folder to store vim's backup files. 

Open the `.vimrc ` and run the `:PluginInstall ` to let vim install all the plugins. 

# Mega Storage
---
`apt install megatools` to install the command line tools for mega storage. If you already have a mega account , put the user name and pasword in `.magarc` and you are good to go with `maga copy`. If no existing account , you can register from command line withcommand `megareg` . All the details in `man megatools`.



# Node
---
Now the fun part .... . The official Debian repository has an older version of node. If you want the latest (with npm) , you can get the [node source repository](http://nodesource.com/blog/installing-node-js-tutorial-debian-linux)

While you are here, do install the `build tools`. `npm `is included in node 8. 
