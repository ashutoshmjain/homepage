---
layout: post
title:  "Write like a coder"
date: 2017-08-03
desc: "My Commandline Cheatsheet"
keywords: "zsh, tmux, vim"
categories: [Inspirationss]
tags: [zsh,tmux,vim]]
icon: icon-fire-alt
---
[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.svg?v=103)](https://opensource.org/licenses/mit-license.php)
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badge/)

* [linux](#linux)
* [shell](#shell)
* [tmux](#tmux)
* [git](#git)
* [vim](#vim)
* [markdown](#md)
* [jekyll](#jk)
* [fountain](#fn)
 
As a project manager I always wanted developers to put ample comments in their code. Elaborate, unambiguous and clear. Saying used to go around "code like a writer". I think reverse too is true. Writing like a coder, makes a writer more efficient and readable.. 

>A word about this post: it is about tools I am exploring to a coder into my writing. It is NOT an expert guidance. Look at it as my class notes where I am deciding which class to take and when (fun stuff :-). I have been using online tools to write since geo cities. Moved to blogger, word-press and Medium. All great tools for their time. It was always about making writing easier online. Up until last year when i discovered  GitHub and jekyll blogs. I soon realized that ease of use is a relative term. Since then, I have made a significant change in writing tool box. Details as we go along  .. 

# linux
<hr><a name="linux"></a> Not only linux is free, it runs fast on old machines. For a hobbyist writer (assuming unsuccessful :-), its the best alternative to MacOS (and probably better). The beauty of Linux truly shows up in a huge variety of distributions, granularly designed for every segment of users. I tried many variants of Ubuntu before settling with Slackware. Primary reason - its unassuming , hack-able to the core and zero frills. Slackware's default behavior, puts you right at the command line without even starting graphical interface. Which is neat cuz, most of the tools I love are in commandline. 

>A quick word on Command Line tools: They are fast. Even on most old computers. Ddistraction free. Allows you to separate 'research' from writing. Research, for me often leads to wandering :-). So command line keeps me on leash. And here is the kicker - Its more featureful than most gui based editors. You can  design your own environment. One, that suits your style. And best part - Getting rid of mouse is good for your hands. And its just chill. 

I am sure, I will keep on exploring more. For example, recently I tried bunch of [Puppies](http://puppylinux.org/main/Overview%20and%20Getting%20Started.htm). Truly amazed with their agility. Point is - just pick up an old machine (or install Virtual Box on your work machine) and start with any Linux distribution. There are ton of tutorials on internet to get you started. If you are starting fresh, I will highly recommend visit [Linux Mint](https://www.linuxmint.com/). If you already have your feet wet, jump into [Slackware](http://www.slackware.com/)

>A word on Dot files : Most of the things (apps) in command line world don't (obviouly) have a menu driven preferece dialog box. And still they are highly configurable. How? changes to application behavior happens through something commonly called dot files. What they actually mean is the file name starts with a (.) . That is counter intuitive cuz anything starting with . is a hidden file (or directory :-). Probably the idea was to keep these files hidden so that normal user don't mess with it .. Hey - normal user don't use Linux :-) . To add pain to injury, most of the times these files won't even be there. So you need to create one :-) . Though its very very easy. As easy as a 'touch' command. The good news, however, is that you never create these files from scratch. Good intelligent people have all there dot files freely available on Github (or elsewhere on web). Many programs supply a recommended template that can be easily copied. Word of wisdom though is to build your own dot files. Slowly and gradually. Cuz if you could fit into someone else's environment then you should be using ones from Apple and Microsoft :-) Another key thing on the dot files is a kind of precedence. Most of the dot files in your home (~) directory are specific to your user. Something maintained at system level applies cross the board but your home file takes precedence.  Some of the key dot files that we need to worry about as a writer are 

	- .zshrc that controls the behaviour of shell. 
	- .tmux.conf controls the tmux multiplexer
	- .vimrc - the mother of all configurations for a writer.
	- .gitconf - git configuration.
	- _config.yml - jekyll configuration file 
# shell

<hr><a name="shell"></a> I recently moved over to zsh as my default shell. Primarily cuz I wanted beautiful themes from  'Oh my zsh'. I am currently using 'agnoster' as my default theme. Here are the commands that I regularly use as a writer.

## Navigation and editing
- pwd - present working directory
- cd - change directory to get into my posts directory
- ls - to list the previous posts
- mv - move a file from one location to other with the same name or a new name. Original file is gone. Its basically cut and paste as ..
- cp - copy an old post into a new one so that I don't have to rewrite the yml frontmatter. The old post remains unchanged. 
- cat - write something quick on the terminal and save to a file or read a text file in terminal. 

## Admin Stuff

- uname - To find the machine I am working on. I have three linux machines and I keep trying out new distributions. Every now and then, I forget what I am working on :-) Who cares. Its all for fun. 
- ifconfig - I am sure thare are better ways to find the ipaddress but this command gives  you all the information on your network. Including ip address. 
- mount - most of new distributions add automatically mount the usb drives but now and then I need  to unmount them to format the devices. 
- df - simple way to see where all the filesystems are mounted.  - h for human readable format. 
- du - shows the actual space consumed by a particular file or directory. --total for summing the space up in a directory. 
- top - to find how much system resources  are being consumed . Total as well as by each process. A good way to find the process id that can be used to kill a stuck process. 
- kill -  easiest way to kill a process. Find the pid from 'top'
- service - all about the running services. Example 'service udev status' will give everthing  about the udev service. start and stop will do accordingly.  service --status-all 
# git
<hr><a name="git"></a> I publish my blog on the github. Ever since I figured out 'fugitive' plugin for vim , my use of git commands in shell has gone down. Still some times, I use following basic commands. As long as you are not working collaboratively on thousands of lines of code, these five basic commands are good enough. 

	- git clone - to clone a repo on my machine . It will automatically create a directory for the repo. 
	- git add - to stage the chnages to exiting posts or new posts.
	- git commit - to commit the changes 
	- git push - to publish the changes to git hub. 
	- git rm - remove a file from the git repository. useful to remove the back up files. 
# tmux

<hr><a name="tmux"></a> tmux us a terminal multiplexer. Means it allows to split your terminal into multiple sessions. Each session can have multiple windows and each window can be split into multiple  panes.I don't use tmux unless I am logged into a remote machine that never goes down. There, I can detach from the terminal when I shut down my local machine and come back to attach the same session later. Its very useful for sysadmins who run long batch jobs. For writers, I find it bit overkill. Still, not a bad idea to try it out..

- tmux			to start a new tmux session  ( I can assign it a name with -s)
- tmux attach-session 	to attach to an existing session

**I have mapped the pane operations prefix to  'a' (in place of b) for easy reach.** Add following to .tmux.conf. This should be in home (~) directory. 

	-set -g prefix C-a
- (ctrl) a |	to split a new horizontal pan
- (ctrl) a -	to split a new vertical pan
- (ctrl) a o	to jump to next pane
- (ctrl) a w	list window. Move up and down with arrow keys to select the required window. 
- (ctrl) a ls	list sessions
- (ctrl) a , 	list windows
- (ctrl) a c 	create new window
- (ctrl) a t	big clock
- (ctrl) a d 	detach from current session
    
# Vim
<hr><a name="vim"></a> 
It might surprise you but vim is lot like an iPhone keyboard. Like typing on an onscreen keyboard, in vim, we spend more time in determining what to edit  then the act of inserting or altering text. On a smart phone, we move up, down and sideways with  touch gestures; in vim, we have highly  intuitive key combinations to move around. Idea is simple but powerful  - spend more time in deciding what to do before  start doing it.

>Lot has been said in praise of vim. And its all true. And also that it takes time.  I got my first exposure last year as I started discovering command line. I jumped into it without any help. It was tough. Soon I found myself sheltered under 'Atom'. Which again is a great editor but I came back to vim . This time well equipped. I read through internet. Listened to the vim Podcasts. Watched you tube videos. And now there is no going back. I wouldn't say you need to lock your up and down keys. Or just use hjkl. I would just say that you need to give yourself time. Keep playing with it. It happens ..when it does, you will know it. And you will want to tell the world :-)

## Normal Mode
Vim opens in the normal mode. This is where you review, move and determine the text - to copy, delete or change. If only you want to change the text (or insert something new), you invoke the 'insert' mode. Its hard to wrap around that there are more commands in 'normal' mode than in 'insert'. In fact I don't even know if there are commands in insert mode cuz the whole keyboard is at your disposal to insert or alter text.. The idea is - you don't do anything in insert mode except for typing the content. The moment you are done with typing (it may be a long essay or a word) , you escape back to the normal mode 


>One word of caution, till you grasped most normal mode commands (which are many), your cursor will go random places cuz you will invariably hit a key that invokes some motion command. There are only two ways to handle this. Either undo (u) or just be careful in normal mode. If something untoward happens , be curious to know the behavior. You will probably not remember which key you pressed. Still keep your eyes open. Chances of this happening in insert mode are less. 

- **Horizontal movement** h, j , k , l - Also called the home row. Its moving the cursor left right up and down. Replacement for the up down and side arrows. Four keys saved. Don't know why Blackberry didn't implement it in their physical keyboard :-) You can do 2j to move 2 lines down. Suffixing numbers to the motion keys a powerful way to extend your reach. . 
- **Undo**  u - Undo last action. Vim has a long memory, more than your mind. You can continue to undo as long as you remember. 
- **Jump** $ - move the cursor to the end of the current line
- **Jump Back** ^ - move the cursor to the beginning of the current line
- **Jump Back** 0 - move the cursor to the first character of the line 
- **Jump and Insert** A - move the cursor at the end of the current row and put you in insert mode.
- **Jump Back and Insert** I - move the cursor to the start of current row and put you in insert mode..
- **Spell Check** ]s, [s - I normally keep  *Spell Checker* off till I really want to do spell check. That's cuz highlighted errors make me go into the edit mode. When i turn spell check (command :set spell) on, ]s and [s move me forward and backward to the highlighted words. Once there, I use *zg* to add the word to dictionary or *z=*to look for the available options. 
- **Delete line** dd - keep in mind that a line goes till you press enter. So on screen a line might look like a complete paragraph.
- **Copy a line** yy - more of yanking under visual mode.
- **Paste a line** p - whatever was previously yanked or deleted.
- **Search** Vim has powerful search and its a lot more involved topic. For now / invokes search in forward direction. 
- **Go to the Top** - gg takes the cursor to the top. 
- **Go to the Bottom** G takes the cursor to the bottom of the page. 
	>Above commands should make your move around the screen  easy. Lets say you can now magically place your cursor wherever you want (like touch on iPhone) , then there are only four  basic operations that the editing is all about  - 1) Copy , 2) Delete, 3) Change and lastly 4) insert. This is how vim accomplishes these operations :- 

- **Copy or as Vim calls it -Yank** 'y' is the key to initiate the selection. You press y, vim is ready for you to tell it what to yank. Then motion keys are used to determine the selection. For example yw will yank next word. y$ will yank till end of line. yy is a special case here which actually tells vim to go the start of the current line (0) and then yank till the end ($). So yy is --> 0y$. If you noticed, there is no need to go into 'insert' mode yet. Since you are still in normal mode, you can continue to use the motion keys to move to where ever you want to paste the copied text. Once there, use P to paste at cursor, or p to paste a place ahead of cursor. 
- **Delete** 'd'  is the key to initiate the selection. You press d, vim is ready for you to tell it what to delete. Then motion keys are used to determine the selection. For example dw will delete the next word. d$ will delete till end of line. dd is a special case here we actually tell vim to go the start of the current line (0) and then delete till the end ($). So dd is --> 0d$ If you noticed, there is no need to go into 'insert' mode for this operation. 
- **Change** 'c'  is the key to initiate the selection. You press c, vim is ready for you to tell it what to change. Then motion keys are used to determine the selection. For example cw  will change the next word. c$ will change till end of line. If you need to change a single character under the cursor, an easy way is to use 'r'. If you want to go into "Overwrite mode" R will do the trick. 
	>Essentially , keys y,d and c (in normal mode) open up a memory store, there after, the motion keys become a mechanism to make a selection. Whatever you select goes into memory store. Also called a hidden register. This is the reason, Vim can undo these operations. And here is the kicker - with '.' you can keep on repeating the edit operations as long as you  want. This is a very powerful editing tool.

## Insert mode 
'i' is the key to initiate the 'insert' mode. You press i, vim is ready for you to tell it what to insert. We can get into insert mode with 
- A (end of the line), 
- I (start of the line, 
- O insert a line above and be in insert mode.
- o insert a new line below and be in insert mode

    >The key difference in keys y,d,c v/s i (and rest of the above insert mode invocation keys) is that in insert mode you don't have option to use motion keys to make a selection. Rightly so, cuz now you have the whole keyboard for you to type. You can't even get to command mode from insert mode i.e if you press colon , it print : on screen rather than taking you to command mode. To get into command mode, you need to come back to normal mode with a press of escape. 
    > Its a good ides to bind your caps lock key to escape for one caps lock hardly has a use, and two reaching to the escape key on top left corner is too much work for a lazy vimmer :-)
## Command Mode 
As the name suggests, this is where big commands go. We invoke the command mode with colon (:), The cursor moves to the bottom of the screen and vim is waiting for you like a trained dog. Be careful, its a powerful dawg 

- **Save File**  :w -  Mix with q to save and quit. 
- **Quit** :q - Quit without saving. Mix with ! to just abandon. 
- **Save and Quit**  :x (same as :wq)
> Notice the way we are mixing the commands. This happens a lot in vim. And this is what makes vim magical:-)
- **Invoke Spell Check** :setlocal spell
- **Relative Numbering for the Rows** :set rnu As you know, we can jump to a row with nj or nk , but finding the n is a hassle. You don't have time to run mind math. Relative numbering makes it easy. It basically makes the row with your cursor as zero and then counts up and down. I normally don't keep the absolute numbering on. Just keep the relative numbers. It also helps me find my cursor. Just look for row 0. 
## Visual mode
I rarely use visual mode as it is rare for me to copy paste text that I can't select in normal mode with y.This mode invokes when we press v in normal mode. Then we can use movement keys (hjkl) (with prefix number) to select the text. Once text is selected, use y to yank (copy) the text , then use motion keys (hjkl) to move to the place where you want to paste and hit p. It looks mouthful but once we get used to it its fast and accurate. 

## Plug-Ins
There are thousands of plug ins for vim. vim.org is the legacy site for the list but its lot easier to look at [vimawesome](http://vimawesome.com/)
#### gmarik/Vundle
[vundle](https://github.com/VundleVim/Vundle.vim) is a plugin to manage plugins. In previous world, vimmers had to download each plug in, put it in a specific directory and then let .vimrc know what to do with the plugin. With vundle, all that is gone. You don't even need to clone (or download) other plugins. Vundle does that for you. As you may have understood by now, most plugins live on GitHub. At least the ones I use. So all you need to do is just add the name (Not GitHub url) to the vimrc and run the command :PluginInstall. Vundle will go to the hub, clone the plug ins and put the scripts in required tree structure. And of course, update for you when ever you ask for :PluginUpdate. Here is how my .vimrc looks like. 

	set nocompatible
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	Plugin 'gmarik/Vundle.vim'
	Plugin 'flazz/vim-colorschemes'
	Plugin 'tpope/vim-fugitive'
	Plugin 'godlygeek/tabular'
	Plugin 'plasticboy/vim-markdown'
	Plugin 'scrooloose/nerdtree'
	Plugin 'vim-airline/vim-airline'
		
	
#### flazz/vim-colorschemes
There are hundreds of colorschemes available for Vim. Its really cumbersome, if you were to install each of them as a separate plug in to be able to try them. Instead, just install colorscheme plugin. This plugin, searches vim.org for the colorschemes and downloads them automatically. Then you can pass the colorscheme of your choice as a command as in :colorscheme VIvid. This is the one I am using now. As expected, this colorscheme has high contrast but it makes my airline status bar very prominent. molokai is bit easy on eyes but the background is still dark. I prefer wombat or yaml or google as they make things very soft. Btw - you can always set up a default colorscheme in the .vimrc. 
#### tpope/Fugitive
Fugitive really makes git a thing for writers. Now we don't need to go out of vim (to shell command line) and add, commit or push as a separate operation. We can now do all these operations from with in the open vim file (post) without even specifying the name of the file (duh). Here are the four basic commands
- **Gwrite** add the current post to git
- **Gcommit -m 'commit message'** This will add the post to the current branch. 
- **Gpush** - That's it. Your post is now on GitHub and possibly on your blog. 

    	Important point : All the commands are starting with a capital letter. 

#### godlygeek/Tabular
Tabular is a must have plugin for a writer. An easy way to create table midst your text with just one command :Tabularize/ . The best way to understand this plugin is to do a small [trial](https://raw.githubusercontent.com/godlygeek/tabular/master/doc/Tabular.txt)

Here is a sample table created with Tabularize

	|                      Action                      |   Command  |         Comments        |
	| Jump to the end of line and get into insert mode |      A     | Use this in normal mode |
	|                 Start spell check                | :set spell |  Use it in command mode |
#### plasticboy/vim-markdown 
#### scrooloose/nerdtree
#### vim-airline/vim-airline


# markdown 
<hr><a name="md"></a> lets just say that markdown is an easier (and elegant) way to create html documents. Rather than using difficult tags, markdown supplies a set of notations that are work well when document is displayed by a browser. Github automatically shows the README.md on the front page of repository just below all the files. Good integration. Here is my go to blog post on [markdown](https://blog.ghost.org/markdown/) . And some of the commands I regularly use.

- **Block Quote** - A forward arrow '>' will put your lines into a quote. A good way to quote someone or bring your own pespective
- **Links** - \[Name of Hyperlink](hyperlink)
- **Turning Markdown into plain English** - Many times you may want hypertext commands to show up as plain English. As in the example above. Just put a \ befor the command.
-
# jekylll 
<hr><a name="jk"></a> jekyll a tool to suck up a website and render on web with least back and forth with server. It works great with static websites (eg blogs). That much for technology :-)  For a reader, it offers beautiful and instant reading environment; from writer standpoint , it has ton of customizable templates to host your content. Its a default hosgting mechanism of github pages as well. My blog is hosted on gh pages and thus you are reading this text via jekyll. 

# fountain 
<hr><a name="fn"></a> Fountain is markdown "on steroids" for writing screenplays. I haven't used it yet cuz I have never written a screenplay but it is on my todo to explore this space. 
