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

>A word about this post: it is about tools I am exploring to bring a coder into my writing. It is NOT an expert guidance. Look at it as my class notes where I am deciding which class to take and when (fun stuff :-). I have been using online tools to write since geo cities. Moved to blogger, word-press and Medium. All great tools for their time. It was always about making writing easier online. Up untill last year when i discoved github and jekyll blogs. I soon realized that ease of use is a reletive term. Since then, I have made a significant change in writing tool box. Details as we go along  .. 

# linux
<hr><a name="linux"></a> Not only linux is free, it runs fast on old machines. For a hobbyist writer (assuming unsuccessful :-), its the best alternative to MacOS (and probably better). The beauty of Linux truly shows up in a huge variety of distributions, granularly designed for every segment of users. I tried many variants of Ubuntu before settling with Slackware. Primary reason - its unassuming , hack-able to the core and zero frills. Slackware's default behavior, puts you right at the command line without even starting graphical interface. Which is neat cuz, most of the tools I love are in commandline. 

>A quick word on Command Line tools: They are fast. Even on most old computers. Ddistraction free. Allows you to separate 'research' from writing. Research, for me often leads to wandering :-). So command line keeps me on leash. And here is the kicker - Its more featureful than most gui based editors. You can  design your own environment. One, that suits your style. And best part - Getting rid of mouse is good for your hands. And its just chill. 

I am sure, I will keep on exploring more. For example, recently I tried bunch of [Puppies](http://puppylinux.org/main/Overview%20and%20Getting%20Started.htm). Truly amazed with their agility. Point is - just pick up an old machine (or install Virtual Box on your work machine) and start with any Linux distribution. There are ton of tutorials on internet to get you started. If you are starting fresh, I will highly recommend visit [Linux Mint](https://www.linuxmint.com/). If you already have your feet wet, jump into [Slackware](http://www.slackware.com/)

>A word on Dot files : Most of the things (apps) in command line world don't (obviouly) have a menu driven preferece dialog box. And still they are highly configurable. How? changes to application behavior happens through something commonly called dot files. What they actually mean is the file name starts with a (.) . That is counter intuitive cuz anything starting with . is a hidden file (or directory :-). Probably the idea was to keep these files hidden so that normal user don't mess with it .. Hey - normal user don't use Linux :-) . To add pain to injury, most of the times these files won't even be there. So you need to create one :-) . Though its very very easy. As easy as a 'touch' command. The good news, however, is that you never create these files from scratch. Good intelligent people have all there dot files freely available on Github (or elsewhere on web). Many programs supply a recommended template that can be easily copied. Another key thing on the dot files is a kind of precedence. Most of the dot files in your home (~) directory are specific to your user. Something maintained at system level applies cross the board but your home file takes precedence.  Some of the key dot files that we need to worry about as a writer are 

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

<hr><a name="tmux"></a> tmux us a terminal multiplexer. Means it allows to split your terminal into multile windows and panes. I don't use tmux unless I am logged into a remote machine that never goes down. There, I can detach from the terminal when I shut down my local machine and come back to attach the same session later. Its very useful for sysadmins who run long batch jobs. For writers, I find it bit overkill. Still, not a bad idea to try it out..

- tmux - to start a new tmux session  ( I can assign it a name with -s)

**I have mapped the pane operations prefix to  'a' (in place of b) for easy reach.** Add following to .tmux.conf. This should be in home (~) directory. 

	-set -g prefix C-a
- (ctrl) a | to split a new horizontal pan
- (ctrl) a - to split a new vertical pan
- (ctrl) a o to jump to next pan
# vim
<hr><a name="vim"></a> 
lot has been said in praise of vim. And its all true. And also that it takes time.  I got my first explosure last year as I started discovering command line. I jumped into it without any help. It was tough. Soon I found myself sheltered under 'Atom'. Which again is a great editor but I came back to vim couple months back. This time well eqipped. I read through internet. Listened to the vim padcasts. Watched you tube vedios. And now there is no going back. I wouldn't say you need to lock your up and down keys. Or just use hjkl. I would just say that you need to give yourself time. Keep playing with it. It happens ..when it does, you will know it. And you will want to tell the world :-)

## Normal Mode
Vim opens in the normal mode. This is where you edit stuff. Typing is in the 'insert' mode. Its hard to wrap around that there are more commands in 'normal' mode than in 'insert'. In fact I dont even know if there are commands insert mode. The idea is you don't do anything in insert mode except for typing the content. The moment you are done with typing (it may be a long essey or a word) , you escape back to the normal mode. It is here that you move (or position ) your cursor. You delete line. You cut copy paste. You insert lines , fold them and rest everything. One good tip is to keep on writing till you have really emptied all you had in your brain. Save the document. And then strat editing it in normal mode. For me its a great time saver.

>One word of caution, till you grasped most normal mode commands (which are many), your cursor will go random places cuz you will invariably hit a key that invokes some motion command. There are only two ways to handle this. Either undo (u) or just be careful in normal mode. If something untoward happens , be curious to know the behavior. You will probably not remember which key you pressed. Still keep your eyes open. Chances of this happening in insert mode are less. 

- **Horizontal movement** h, j , k , l - Also called the home row. Its moving the cursor left right up and down. Replacement for the the up down and side arrows. Four keys saved. Don't know why Blackberry didn't implement it in their physical keyborad :-) You can do 2j to move two lines down but thats just for the coders. 
- **Undo**  u - Undo last action. vim has a long memory, more than your mind. You can continue to undo as long as you remember. 
- **Jump** $ - move the cursor to the end of the current line
- **Jump Back** ^ - move the cursor to the beginning of the current line
- **Jump Back** 0 - move the cursor to the first character of the line 
- **Jump and Insert** A - move the cursor at the end of the current row. 
- **Jump Back and Insert** I - move the cursor to the start of current row and put you in insert mode..
- **Spell Check** ]s, [s - I keep the a *Spell Checker* off till I really want to spell check. Thats cuz highlighted errors make me go ito the edit mode. When i turn it on, these commands move me foreard and backward to the highlighted words. Once there, I use *zg* to add the word to dictionary or *z=*to look for the available options. 

## Command Mode 
As the name suggests, this is where big commands go. We invoke the command mode with colon (:), The cursor moves to the bottom of the screen and vim is waiting for you like a trained dog. Be careful, its a powerful dawg 

- :w - Save the file. Mix with q to save and quit. 
- :q - Quit without saving. Mix with ! to just abondon. 
-
-
-
-
## Plug-Ins

There are thousands of plug ins for vim. vim.org is the legacy site for the list but its lot easier to look at vimawesome.com
### gmarik/Vundle
### flazz/vim-colorschemes
### tpope/Fugitive
### godlygeek/Tabulae
### plasticboy/vim-markdown 
### scrooloose/nerdtree
### vim-airline/vim-airline


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
