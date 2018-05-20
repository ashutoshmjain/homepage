Here are my installation notes on Debian ( Stretch) minimal server and configuring it to a node server. Also installing little things that make command line a beautiful place to work. Debian minimal server doesn't has a gui and comes with minimal packages .. The best solution for trying out your hands on an older machine before you put it to real use .. 

# Minimal Server
- Followed  the tutorial at https://howtoforge.com/tutorial/debian-minimal-server
- Unetbootin a usb for the Debian net install
- Choose minimal server for installation. Follow the menu. 
- Grub is a problem cuz it thinks that usb is the primary device. Not sure how it worked but somehow I got to Lilo installation and it worked well there after. Had to go back in menu multiple times. 
- Installed the extra packages `openssh` `nano` and `vim nox` as they are anyway needed. 

# Static  IP
Followed the tutorial to give server a fixed ip . Changed the /etc/network/interface file exactly as the tutorial but networking stopped. So don't follow the tutorial here. Somehow networking didn't start even when I restored the original file. Spent almost a day in trying to fix the network. Ultimately used the example given in man pages for `interfaces` . This restored the network and looks like I have a fixed IP now cuz IP address has not changed since many reboots over last few days . God knows what happened . 

# SSH 

Most of the work (post installation ) I did on this server was through remoting in from my Slack desktop. Set up the ssh ID on Slackbox , added it to the ssh daemon and secure copied the key to the server. Here is the link to do all this  .. https://techrepublic.com/article/how-to-use-secure-copy-with-ssh-key-authentication

# Zsh 

bash is great but I love zsh. 

`apt install zsh` for zsh and set it your default shell with `chsh -s /bin/zsh` . When you launch the zsh shell first time , it gives a command line based tool to configure the .zshrc 

# Powerline Status bar for zsh

I install the powerline fonts before I install the status bar . `apt install fonts-powerline`

Next `apt install powerline`

Little configuration change in .zshrc needed to point it to the powerline status bar. Add this line at the bottom of the .zshrc. 

`. /usr/share/powerline/bindings/zsh/powerline.zsh`

# FBterm

Since its a 'command line only' environment , I decided to use a fancier terminal - FBterm. The key shortcuts didn't  work cuz FBterm needs the capabilities for ` cap_sys_tty+ep' `. The command `setcap` , required to setup capabilities, didn't  work on the base server cuz  binaries of package libcap2 were missing. `apt install libcap2-bin ` to solve this issue and run command `setcap 'cap_sys_tty+ep' /usr/bin/fbterm`

FBterm rocks with zsh and powerline status bar. 

# Browser

`apt install lynx`

# Search 

`apt install googler`

add this line to .zshrc to automate the search results to open lynx automatically 

`export BROWSER=lynx`

# git and github

`apt install git` and do the first time set of git hub user name and email address 

`git config --global user.name "first name . last name"`
`git config --global user.email email address`

make sure this email is same as  your git hub account. 

then follow the article https://help.github.com/articles/connecting-to-github-with-ssh for setting up and testing connection with github


# Vim vundle 

We already installed vim nox as part of the first tutorial. Install vundle as git plugin manager from https://github.com/VundleVim/Vundle.vim

Now dump in your .vimrc in the home folder. You can check out mine from https://github.com/ashutoshmjain/homepage/blob/gh-pages/dotfiles/.vimrc  . I am planning to clean it up little more but it works well. If you use this , you will need to make a directory .vimbackup in your home folder to store vim's backup files. 

Open the .vimrc and run the :PluginInstall to let vim install all the plugins. 

# Node

Now the fun part .... . The official Debian repository has an older version of node. If you want the latest (with npm) , you can get the node source repository. Here is the link http://nodesource.com/blog/installing-node-js-tutorial-debian-linux

While you are here, do install the build tools. npm is included in node 8. 

