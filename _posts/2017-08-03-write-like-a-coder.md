---
layout: post
title:  "Write like a Coder"
date: 2017-08-03
desc: "My writing toolbox"
keywords: "zsh, tmux, vim, markdown, jekyll, pandoc"
categories: [Inspirations, FOSS]
tags: [zsh,tmux,vim, markdown, jekyll, pandoc]
icon: icon-fire-alt
---
[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.svg?v=103)](https://opensource.org/licenses/mit-license.php)
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badge/)

As an IT project manager I always wanted developers to put ample comments in their code. Elaborate, unambiguous and clear. Saying used to go around "code like a writer". I think reverse too is true. Writing like a coder, makes a writer more efficient and readable.. 

>A word about this post: it is about tools I am exploring to bring rigor of coding into my writing . I have used online tools to write since geo-cities. Moved to blogger, Wordpress and finally to Medium. All great tools for their time. True to their core mission - make writing accessible on web. Easy for everyone. But somewhere along the lines, they dumbed it down. It became simple but limiting. Same plight for desktop tools such as MS Office. I felt tied to proprietary systems and formats. 	 Up until I discovered  GitHub and Jekyll and the rich repositories of open source. I soon realized 'ease of use' is overrated and possibly hyped. Since then, I have made a significant change in my writing workflow. Details as we go along . 

Another reason is  to formalize a system of writing that is consistent with code development. Today, most of the enterprise projects use separate  tools for software development and documentation. This creates lag, friction and makes developers abhor documentation. Describing your work should be fun. Many open source projects, that removed this friction, already enjoy high quality documentation at a fraction of resources in comparison to commercial IT projects. I understand the lure for apparently easier and shining interfaces for I have been down that path many times. But the time thus spent is at best wasted. I thought, I was probably tool agnostic. Nothing could be farther from truth. Tools shape our thinking, our approach and ultimately the outcomes. To an extent that our relationship with them is almost spiritual.

# Linux (Slackware)

Not only Linux is free, it runs fast on old machines. For a hobbyist writer (assuming unsuccessful :-), its the best alternative to MacOS (and probably better). The beauty of Linux truly shows up in a huge variety of distributions, granularly designed for every segment of users. I tried many variants of Ubuntu before settling with Slackware. Primary reason - its unassuming , hack-able to the core and zero frills. Slackware's default behavior, puts you right at the command line without even starting graphical interface. Which is neat cuz, most of the tools I love are in command line. 

>A quick word on Command Line tools: They are fast. Even on most old computers. Distractions free. Allows you to separate 'research' from writing. Research, for me often leads to wandering :-). So command line keeps me on leash. And here is the kicker - Its more feature full than most GUI based editors. You can  design your own environment. One, that suits your style. And best part - Getting rid of mouse is good for your hands. And its just chill. 

I am sure, I will keep on exploring more. For example, recently I tried bunch of [Puppies](http://puppylinux.org/main/Overview%20and%20Getting%20Started.htm). Truly amazed with their agility. Point is - just pick up an old machine (or install Virtual Box on your work machine) and start with any Linux distribution. There are ton of tutorials on internet to get you started. If you are starting fresh, I will highly recommend visit [Linux Mint](https://www.linuxmint.com/). If you already have your feet wet, jump into [Slackware](http://www.slackware.com/)

>A word on Dot files : Most of the things (apps) in command line world don't (obviously) have a menu driven preference dialog box. And still they are highly configurable. How? Changes to application behavior happens through something commonly called dot files. What they actually mean is the file name starts with a (.) . That is counter intuitive cuz anything starting with . is a hidden file (or directory :-). Probably the idea was to keep these files hidden so that normal user don't mess with it .. Hey - normal user don't use Linux :-) . To add pain to injury, most of the times these files won't even be there. So you need to create one :-) . Though its very very easy. As easy as a 'touch' command. The good news, however, is that you never create these files from scratch. Good intelligent people have all there dot files freely available on GitHub (or elsewhere on web). Many programs supply a recommended template that can be easily copied. Word of wisdom though is to build your own dot files. Slowly and gradually. Cuz if you could fit into someone else's environment then you should be using ones from Apple and Microsoft :-) Another key thing on the dot files is a kind of precedence. Most of the dot files in your home (~) directory are specific to your user. Something maintained at system level applies cross the board but your home file takes precedence.  Some of the key dot files that we need to worry about as a writer are 

	- .zshrc that controls the behaviour of shell. 
	- .tmux.conf controls the tmux multiplexer
	- .vimrc - the mother of all configurations for a writer.
	- .gitconf - git configuration.
	- _config.yml - jekyll configuration file 
	- .megarc - your account information for the Mega cloud storage. 


# Native *nix experience on Windows.

If you must use Windows and don't want to install Linux as a virtual machine , the best bet would be to use [git for Windows](https://git-for-windows.github.io/) . In addition to command line git, Git for windows will install 'git bash' on your windows machine. Git bash is a command line emulator that will give you a close feel of Linux with limited commands. This is the fastest and least disruptive way to get productive on windows. I am writing this paragraph in `vim` invoked from `git bash`. 'Git for Windows' is based on [msys2](http://www.msys2.org) (a fork of msys). The goal of msys2 (and msys) is to provide a native *nix type of development environment for the windows users. They leverage [MinGW](http://www.mingw.org) (Minimalist GNU for Windows).

'Git for Windows' allows you to access all the git commands from windows Command Prompt as well as from 'Git Bash'. I prefer Git Bash over the Command Prompt for simple / vs \ reason :-). In addition Git Bash provides  commands such as `ls`, `cp`, `mv`. You can probably circumvent using Windows Power Shell. Bottom line  - If you are a windows developer, you would probably use Command Prompt ( Or Power Shell) , If you are coming in from *nix world, you will find at how in Git Bash. 

To make things a bit more complex, Msys2, too has its own terminal. It comes with Pacman (Package Manager for Arch Linux). You can use it to update the underlying Msys and MinGW system. 

# Shell (Zsh)

I recently moved over to zsh as my default shell. Primarily cuz I wanted beautiful themes from  [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh)'. I am currently using 'agnoster' as my default theme. In addition to themes, 'Oh my zsh' brings number of plugins to the table. I use web-search plug in that lets me google any term right from the terminal.


>A word about shell - Things are bit hazy when it comes to defining a console or terminal. It probably has roots shared with earlier hardware consoles that started the video interactions with computers. However, there is no ambiguity on shell - Its a program that converts user inputs into actions. Typically the shells are associated with the command line interface but windows graphical interface (explorer.exe) is also technically a shell. On the Unix like OSs, distinction is clearer. We have popular shells for the terminal such as sh, ksh, csh, tcsh, bash and zsh. These shells support the command line interface in terminal (or console) whereas graphical interface is implemented by a server X11. Linux and other Unix like system allows you to access multiple sessions of consoles even when graphical interface is running. Press ctrl+Alt+F1 through F9. The graphical interface usually runs at F7. If you want to run console from with in graphical interface, you can use 'Terminal Emulators'. Weather you are running a console session or a Terminal emulator, you are effectively interacting with the shell. The default shell in Linux distributions is usually 'bash'. You can change the default to any other shell (say zsh). If the things are not complicated  enough yet then here is the final one , you can start multiple sessions of same (or different shells) with in same terminal window. For example you can run zsh with in bash. Lets not worry about these for now and change the default shell to zsh. Why zsh ? - simple answer - it is friendly without any compromise. 

If you don't run the Graphical interface (by choice or hardware limitations), you may find that the console colors and fonts are somewhat limited. For example you may not get the beautiful Zsh themes as you get in Terminal emulators. The solution is **fbterm**. Frame buffer terminal is a way to enhance the bundled Linux terminal to something more palatable. 

Here are few commonly used shell commands. ..

## Navigation and editing
- pwd - present working directory
- cd - change directory to get into my posts directory
- ls - to list the previous posts
- mv - move a file from one location to other with the same name or a new name. Original file is gone. Its basically cut and paste as ..
- cp - copy an old post into a new one so that I don't have to rewrite the yml frontmatter. The old post remains unchanged. 
- cat - write something quick on the terminal and save to a file or read a text file in terminal. 
- tar - unpack an archive. Normally tar -xzf file_name. It will automatically create a directory and mimic the structure of subdirectories. 

## Admin Stuff

- uname - To find the machine I am working on. I have three Linux machines and I keep trying out new distributions. Every now and then, I forget what I am working on :-) Who cares. Its all for fun. 
- ifconfig - I am sure there are better ways to find the IP address but this command gives  you all the information on your network. Including ip address. 
- mount - most of new distributions add automatically mount the USB drives but now and then I need  to unmount them to format the devices. 
- df - simple way to see where all the file systems are mounted.  - h for human readable format. 
- du - shows the actual space consumed by a particular file or directory. --total for summing the space up in a directory. 
- top - to find how much system resources  are being consumed . Total as well as by each process. A good way to find the process id that can be used to kill a stuck process. 
- kill -  easiest way to kill a process. Find the pid from 'top'
- service - all about the running services. Example 'service udev status' will give everything  about the udev service. Start and stop will do accordingly.

# Git and GitHub

Git is the version control system. Conceived and developed under Linus Torvalds. GitHub makes it a truly distributed version control for individuals and open source projects. In addition to version control, GitHub adds features such as gh pages (a web server), issue management and collaboration. There are number of GUI applications to bring git and GitHub though it shines on the command line. Fugitive plugin in vim, extends git features effortlessly into the editor. . 	

I moved my  blog last year from blogger to GitHub and there is no going back.

Both git and GitHub have bit of learning curve but as you are not working collaboratively on thousands of lines of code, these basic commands are good enough. At least to get you started. The best place to start your deep dive is [GitHub Help](https://help.github.com/)

	- git clone - to clone a repo on to my machine (typically from GitHub). It will automatically create a directory for the repo. 
	- git add - to stage the modified or new files 
	- git commit - to commit the changes 
	- git push - to publish the changes to git hub. 
	- git checkout - What if you messed up a file but the last commited copy is good. git checkout the last saved file. 
	- git rm - remove a file from the git repository. useful to remove the back up files. 

# Terminal Multiplexer. (tmux)

Tmux is a terminal multiplexer. Means it allows to split your terminal into multiple sessions. Each session can have multiple windows and each window can be split into multiple  panes.I don't use tmux unless I am logged into a remote machine that never goes down. There, I can detach from the terminal when I shut down my local machine and come back to attach the same session later. Its very useful for sysadmins who run long batch jobs. For writers, I find it bit overkill. Still, not a bad idea to try it out..

- tmux			to start a new tmux session  ( I can assign it a name with -s)
- tmux attach-session 	to attach to an existing session

**I have mapped the pane operations prefix to  'a' (in place of b) for easy reach.** Add following to .tmux.conf. This should be in home (~) directory. 

	-set -g prefix C-a

Here are the basic commands ..

- (ctrl) a |	to split a new horizontal pan
- (ctrl) a -	to split a new vertical pan
- (ctrl) a o	to jump to next pane
- (ctrl) a w	list window. Move up and down with arrow keys to select the required window. 
- (ctrl) a ls	list sessions
- (ctrl) a , 	list windows
- (ctrl) a c 	create new window
- (ctrl) a t	big clock
- (ctrl) a d 	detach from current session

# Editor (Vim)

[Vim](https://vim.sourceforge.io) stands for vi improved. Probably the most widely available text editor. Its natively available on all Unix like OSs and Mac OS. A gui version is available on most versions of Windows. Independent ports are available for iOS and Android. It is rock solid; highly configurable and extendable; and probably the most [loved](https://www.diffur.com/q/what-is-the-best-text-editor-for-programming) text editor.

It might surprise you but vim is lot like a smart phone native editor. Like typing on an onscreen keyboard, in vim, we spend more time in determining what to edit  then the act of inserting or altering text. On a smart phone, we move up, down and sideways with  touch gestures; in vim, we have highly  intuitive key combinations to move around. Idea is simple but powerful  - spend more time in deciding what to do before  start doing it. And a clear distinction of evaluation v/s insert. The evaluation mode, in vim, is called normal mode (nomo for shorts). The learning curve for vim is getting through the normal mode. Once you are comfortable moving around, rest will come to you. 


>Lot has been said in praise of vim. And its all true. And also that it takes time.  I got my first exposure last year as I started discovering command line. I jumped into it without any help. It was tough. Soon I found myself sheltered under 'Atom'. Which again is a great editor but I came back to vim . This time well equipped. I read through internet. Listened to the vim Podcasts. Watched you tube videos. And now there is no going back. I wouldn't say you need to lock your up and down keys. Or just use hjkl. I would just say that you need to give yourself time. Keep playing with it. It happens ..when it does, you will know it. And you will want to tell the world :-)


The additional benefit of learning vim (particularly normal mode) is you will get very effective  with the *man* pages. The navigation of man pages, follows most of the vi motions (and search). This will save you ton of time from googling Linux features and commands. There is practically a *man* page for everything you do in Linux. So much so that there is a man page for man. Type  `man man` on command prompt.  

## Normal Mode
Vim opens in the normal mode. This is where you review, move and determine the text - to copy, delete or change. If only you want to change the text (or insert something new), you invoke the 'insert' mode. Its hard to wrap around that there are more commands in 'normal' mode than in 'insert'. In fact I don't even know if there are commands in insert mode cuz the whole keyboard is at your disposal to insert or alter text.. The idea is - you don't do anything in insert mode except for typing the content. The moment you are done with typing (it may be a long essay or a word) , you escape back to the normal mode 


>One word of caution, till you grasped most normal mode commands (which are many), your cursor will go random places cuz you will invariably hit a key that invokes some motion command. There are only two ways to handle this. Either undo (u) or just be careful in normal mode. If something untoward happens , be curious to know the behavior. You will probably not remember which key you pressed. Still keep your eyes open. Chances of this happening in insert mode are less. 

- **Basic movement** `h, j , k , l `- Also called the home row. Its moving the cursor left right up and down. Replacement for the up down and side arrows. Four keys saved. Don't know why Blackberry didn't implement it in their physical keyboard :-) You can do 2j to move 2 lines down. Suffixing numbers to the motion keys a powerful way to extend your reach. `w` will move the cursor to the beginning of next word. `e` will move to the end of current word.
- **One screen line** A line in vim is the input between two press of enters (NOT Fullstops). In a writer's world , a line can be a full paragraph. So pressing j or k would move a paragraph up or down. How do we move one line up or down as displayed on screen  - press `gj or gk`. For writers,  Its a good idea to map  `gj` to  `j` and  `gk` to `k`.
- **Undo**  `u`- Undo last action. Vim has a long memory, more than your mind. You can continue to undo as long as you remember.`U` will fix the whole line.
- **Jump** `$`- move the cursor to the end of the current line
- **Jump Back**`^`- move the cursor to the beginning of the current line
- **Jump Back** `0` - move the cursor to the first character of the line 
- **Go to the Top** - `gg` takes the cursor to the top of the document. 
- **Go to the Bottom** `G` takes the cursor to the bottom of the document. Line number followed by `G` will take you to that line
- **Toggle open and close brackets** If you keep your cursor on the open bracket `{` and press `%` vim will jump you the closing bracket and vice versa. This is a handy feature in coding to make sure all the brackets are closed. 
- **Top of visible page** `Shift h` will do the trick.
- **Bottom of the visible page** - `Shift l` will do the trick.
- **Back the previous position** - `ctrl o` will bring you back to last position. `Ctrl I` will do the reverse.  
- **Center screen** `zz` to scroll the screen to bring cursor vertically center of the screen.
- **Indenting** `Shift >` You don't need to go to insert mode for indenting the lines. Shift with `Greater than` indents right and `less than` indents left.
- **Pull the line below to merger on cursor line** `Shift j`
- **Spell Check** `]s, [s` - I normally keep  spelling  check off till I really want to spell check. That's cuz highlighted errors make me go into the edit mode and disturb my chain of thought. When i turn spell check (command `:set spell`) on, `]s and [s` move me forward and backward to the highlighted words. Once there, I use `zg` to add the word to dictionary or `z=` to look for the available options. 
- **Delete line** `dd` - keep in mind that a line goes till you press enter. So on screen a line might look like a complete paragraph.So `yggG` will select the whole document. `dggG` will delete all the lines. 
- **Copy a line** `yy` - more of yanking under visual mode.
- **Paste a line** `p` - whatever was previously yanked or deleted.
- **Search** Vim has powerful search . `/` invokes search in forward direction. `*` looks for the word on cursor. `n` moves the search forward one instance at a time. `N` goes backward. If you wanted to search backwards in the first place, use `?` in place of `/`. Remember `Ctrl o` to come back to where you started. `Ctrl I` is the reverse of `ctrl o`. Thus search can be used as a powerful tool to navigate the document for editing. 

>Above commands should make your move around the screen  easy. Lets say you can now magically place your cursor wherever you want (like touch on iPhone) , then there are only four  basic operations that the editing is all about  - 1) Copy , 2) Delete, 3) Change and lastly 4) insert. This is how vim accomplishes these operations :- 

- **Copy or as Vim calls it -Yank** `y` is the key to initiate the selection. You press `y`, vim is ready for you to tell it what to yank. Then motion keys are used to determine the selection. For example `yw` will yank next word. `y$` will yank till end of line. `yy` is a special case here which actually tells vim to go the start of the current line (0) and then yank till the end ($). So `yy is --> 0y$`. If you noticed, there is no need to go into 'insert' mode yet. Since you are still in normal mode, you can continue to use the motion keys to move to where ever you want to paste the copied text. Once there, use `P` to paste at the cursor, or `p` to paste a place ahead of cursor. If you have done `yy`, `p` will paste a line below.
- **Delete** `d`  is the key to initiate the selection. You press `d`, vim is ready for you to tell it what to delete. Then motion keys are used to determine the selection. For example `dw` will delete the next word. `d$` will delete till end of line. `dd` is a special case here we actually tell vim to go the start of the current line (0) and then delete till the end ($). So `dd is --> 0d$` If you noticed, there is no need to go into 'insert' mode for this operation. Just like `yy`, you can use `p` or `P` to paste. So you can say that **`y` supports `copy and paste` where as `d` supports `cut and paste`.** 
- **Change** `c`  is the key to initiate the selection for change. You press c, vim is ready for you to tell it what to change. Then motion keys are used to determine the selection. For example `cw`  will change the next word. `c$` will change till end of line. If you need to change a single character under the cursor, an easy way is to use `r`. If you want to go into "Overwrite mode" R will do the trick. Note that `c` will put you in insert mode at the end of operation. So you are ready to change. `d` and `y` will continue to to keep you in normal mode. 
	
>Keys y,d and c (in normal mode) open up a memory store, there after, the motion keys become a mechanism to make a selection. Whatever you select goes into memory store. Also called a hidden register. This is the reason, Vim can undo these operations. And here is the kicker - the operation done with `y` and `d` are repeatable with `.` . You can keep on repeating the last edit operations as long as you  want even if you have used the motion keys. For example, if you deleted a word (dw), now you can take the cursor anywhere and press  `.`. Viola - the word on cursor will be deleted. You can even use undo `u` in between the operations. 

## Insert mode 
'i' is the key to initiate the 'insert' mode. You press i, vim is ready for you to tell it what to insert. We can get into insert mode with 
- A (end of the line), 
- a (end of  the word)
- I (start of the line), 
- O (insert a line above and be in insert mode).
- o (insert a new line below and be in insert mode)

>The key difference in keys y,d,c v/s i (and rest of the above insert mode invocation keys) is that in insert mode you don't have option to use motion keys to make a selection. Rightly so, cuz now you have the whole keyboard for you to type. You can't even get to command mode from insert mode i.e if you press colon , it print : on screen rather than taking you to command mode. To get into command mode, you need to come back to normal mode with a press of escape. 

Its a good ides to bind your caps lock key to escape for one caps lock hardly has a use, and two reaching to the escape key on top left corner is too much work for a lazy vimmer :-)

## Command Mode 

As the name suggests, this is where big commands go. We invoke the command mode with colon (:), The cursor moves to the bottom of the screen and vim is waiting for you like a trained dog. Be careful, its a powerful dawg 

- **Save File**  :w -  Mix with q to save and quit. 
- **Quit** :q - Quit without saving. Mix with ! to just abandon. 
- **Save and Quit**  :x (same as :wq)
- **Auto Complete** Vim has powerful auto completion tools. For example :e followed by <ctrl>d will show all the commands starting with e. You can then tab through to select appropriate command. 

> Notice the way we are mixing the commands. This happens a lot in vim. And this is what makes vim magical:-)

- **Invoke Spell Check** `:setlocal spell` then you can use `]s or [s` to move to the misspelled words and use `z=`to find the correct options. `zg` to add the word to local library. 
- **Substitute words** `:%s/<old>/<new>/gc` - This will take you to every instance of `<old>` and seek your permission  to substitute it with `<new>`.  To substitute in a range `: #,#s/<old>/<new>/gc (# - row numbers)`
- **Insert a text file at the prompt** `:r <text file>` will insert the whole text file. This is the best way to consolidate notes into one file. zSH auto completion is supported to find  the file path.  
- **Relative Numbering for the Rows** `:set rnu` As you know, we can jump to a row with nj or nk , but finding the n is a hassle. You don't have time to run mind math. Relative numbering makes it easy. It basically makes the row with your cursor as zero and then counts up and down. I normally don't keep the absolute numbering on. Just keep the relative numbers. It also helps me find my cursor. Just look for row 0. 
- **Change colorscheme** `:colorscheme molokai` will set the colors to molokai. And likewise for others. 
- **Commands to improve search** We know we can search forward with `/` and backwards with `?`. `n and N` are used to move forward and backward for the next match. `:set ic` will make search case insensitive. `:set noic` will make search case sensitive again. `:set hls` will highlight all the matches. `:set nohls` will do the opposite. `:set is` for incremental search will match partial phrases. `:set nois` will make the search exact again. You can set multiple options in one shot. For example `:set hls is ic`  is a valid command. 
- **Making buffer modifiable** `:set ma`  and `:set noma` to do the opposite. 


>In addition its own commands (which are many), Vim supports all the terminal commands right from with in the editor screen. From Normal mode press `:!` followed by any terminal command. For example in Linux `:!ls` will give you the contents of the current directory. In Windows `!dir` will do the same. You can even delete or create new files without ever leaving the editor. Try doing this in MS Word :-) The best part is, you can pull the output of terminal commands into vim using `:r !<Terminal Command>`. This means that you never need to leave vim. You can create a log of all your terminal actions. A great boon for system admins. This also means that despite being a light weight editor, vim can scale from system admin to coding in any language. In essence , it serves as a unified text interface for writers, coders, and admins. 

Needless to say that this list is tip of iceberg. The best way to explore vim is to type :help in an open vim.

## Visual mode
The primary use of visual mode is to cut, copy and paste. This mode invokes when we press v in normal mode. Then we can use movement keys (hjkl) (with prefix number) to select the text. Once text is selected, use y to yank (or d to delete) the text , then use motion keys (hjkl) to move to the place where you want to paste and hit p. It looks mouthful but once we get used to it its fast and accurate. 

>In addition to copy and paste, `v`has a unique use. The text , selected with `v` can be saved into a new file using :w <Filename> . This comes in handy if you want to safe keep a para of text (or a piece of code) before making changes to it . Just `v` to select with motion keys and :w to save in a file, without leaving the your current file in editor. 

## Building your .vimrc
As said earlier, most of Linux Applications are configured through their `.rc` files. In case of Vim , since it supports many platforms, the configuration files may be named or located differently. For example in Windows, the config file is normally `_vimrc`. In Linux, the file is .vimrc and is normally in your `home` directory. 

There are many example vim configuration files available online, however, best way to get started is with the example file that came with  your vim installation. 

	"Start a new .vimrc file in your home directory (if its not already there )
	:e .vimrc
	"copy example vimrc from runtime into your .vimrc
	:r $VIMRUNTIME/vimrc_example
	Feel free to edit as needed. 


## Working with multiple files (Buffers)

If you have come this far, you probably already need to work with multiple files together. Vim really excels in keeping tens (if not hundreds) of files at your tips. Here is the core vim features that can be later expanded with the plugins. 
	"open a new or existing file 
	:e <file path /filename1> # Auto completion should make it easy. Wild cards such as * should also work. 
	"open one more file
	:e <file path /filename2> # Auto completion should make it easy. Wild cards such as * should also work. 
	"At this stage vim has two files open and each is in its on `buffer`. You can simply move around these files
	:b1 - go to first buffer
	:b2 - go to second buffer
	:bp - go to previous buffer
	:bn - go to next buffer. 
	:buffers - show a list of open buffers. 

Imagine buffers as a single session of vim. That means you can yank cut paste across buffers. At some point, you may want to see two (or more ) files at the same time. Yes , vim does that too. We can split the screen into multiple horizontal or vertical windows and pull any buffer (even same buffer) in any window. 

	"For horizontal split 
	:sp
	For vertical split 
	:vsp
	"Toggle between open windows
	<ctrl>w w
	"pull buffers in active window with buffer commands such as :b1 ; :b2 ; :bp ; :bn etc. 




## Plug-Ins
There are thousands of plug ins for vim. vim.org is the legacy site for the list but its lot easier to look at [vimawesome](http://vimawesome.com/)

### gmarik/Vundle

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
		
	
### flazz/vim-colorschemes

There are hundreds of colorschemes available for Vim. Its really cumbersome, if you were to install each of them as a separate plug-in to be able to try them. Instead, just install colorscheme plugin from flazz. This plugin, catalogs  vim.org for the colorschemes and downloads them automatically. Then you can pass the colorscheme of your choice as a command as in :colorscheme VIvid. This is the one I am using now. As expected, this colorscheme has high contrast but it makes my airline status bar very prominent. molokai is bit easy on eyes but the background is still dark. I prefer wombat or yaml or google as they make things very soft. Btw - you can always set up a default colorscheme in the .vimrc 

### tpope/Fugitive

Fugitive really makes git a thing for writers. Now we don't need to go out of vim (to shell command line) and add, commit or push as a separate operation. We can now do all these operations from with in the open vim file (post) without even specifying the name of the file (duh). Here are the four basic commands
- **Gwrite** add the current post to git
- **Gcommit -m 'commit message'** This will add the post to the current branch.
- **Gpush** - That's it. Your post is now on GitHub and possibly on your blog. 
Important point : All the commands are starting with a capital letter. 

### godlygeek/Tabular

Tabular is a must have plugin for a writer. An easy way to create table midst your text with just one command :Tabularize/ . The best way to understand this plugin is to do a small [trial](https://raw.githubusercontent.com/godlygeek/tabular/master/doc/Tabular.txt)

Here is a sample table created with Tabularize (and further formatted with plasticboy vim-markdown plugin)

| Action            | Command    | Comments               |
|-------------------|------------|------------------------|
| Start spell check | :set spell | Use it in command mode |

Tabularize can manage more than tables. For example in regular text if you want to align the =s or ,s or :s , it is an easy way. If you are in habit of commenting at the end of your code , it can align all the comments. 

### plasticboy/vim-markdown 

There are three main reasons for me to use this plugin
- **Smart folds** - This plugin folds my long posts smartly in headings , sub headings etc  .. Can go up to six folds . Which is an overkill but you can set up less folding in .vimrc
- **Table formatting** - As you can see from the table above, tables created with Tabularize are very basic, you can enhance the format with :TableFormat. This also means the Tabular plugin must be above this in .vimrc.
- **Table of content on the fly** - Many times in work in progress large docs, as you research, you want to quickly get to a section of the document. This plugin quickly creates a table of content in a side pan (or horizontal window). And allows you to hit enter on any of the section and navigate to the main document. Commands are :Toc or :Toch 
- **Auto Indenting** This plugin smartly adds indents to your enter strokes in insert mode to help you quickly create lists. You can do a [ctrl]d to remove the indent.

### scrooloose/nerdtree

Once you have this plugin installed, :NERDTree will provide a tree like structure in left pane. You can :q to close the pane. In case you don't remember the file you were working on just say vim . on the shell. It will open a complete tree structure on the vim screen. You can navigate your way to desired file. j and k will work for vertical moves. Hit enter or o to open the files or unfold the sub folders. There is lot more to this plug in for further [exploration](https://github.com/scrooloose/nerdtree)

Some basic navigation 

- 0 - open file, directories or bookmarks
- go - open selected file but leave cursor in Nerdtree pane.
- t - open selected node in a new tab
- m - open the Nerdtree menu.
- P - jump to the root node. 
- C-  make selected node as the tree root.
- I - toggle to show hidden files
- q - close the Nerdtree window
- ? - toggle help (this has all the important commands listed) 
- B - Filter Bookmars on the top . You can create bookmarks by navigating to a file and then issuing a commans :Bookmarkfollowed by the bookmark name. The bookmark name will appear in curly bracket along the file. Pressing B will bring all the bookmarks to the top of Nerdtree window.  Now you can use navigation commands like any other file. :BookmarkClear name and :BookmarkClearAll works as the name suggests. 

> Use `ctrl w w` to toggle between Nerdtree window and the the opend files. It works for multiple windows. You can use i to open a file in a vertical split. Similarly you can use `t` to open the file in a new vim tab. Then use `gt` to toggle between tabs. 
Let me caution here that Nerdtree is addictive. Once you get used to managing your files here, other file managers will appear too much work. 


### vim-airline/vim-airline
This plug in provides a cool status bar at the bottom of your vim window. It tells you following among other things. 
- Mode
- Spell Language
- Git branch
- File name
- File format
- Encoding
- Number of words.
- Number of lines

### mzlogic/vim-markdown-toc
This plug in automatically builds a 'Table of Content' on the fly. Once you have basic structure of your document in place, do :GenTocGFM. Viola, the table of content will automatically show up at your cursor. From here on, TOC will automatically adjust on save. You can add as many headings , subheadings you want. The TOC for this post is generated by this plugin.
The TOC generated by this plugin is different from Plasticboy's vim markdown plugin. Vim markdown generates a TOC in a separate pane to help you navigate through the document. It doesn't show up in the document itself. 


# Markdown (GitHub flavoured)

Let's just say that markdown is an easier (and elegant) way to create html documents. Rather than using difficult tags, markdown supplies a set of notations that are work well when document is displayed by a browser. GitHub automatically shows the README.md on the front page of repository just below all the files. Good integration. Here is my go to blog post on [markdown](https://blog.ghost.org/markdown/) . And some of the commands I regularly use.

- **Block Quote** - A forward arrow '>' will put your lines into a quote. A good way to quote someone or bring your own perspective
- **Code Block** - Indent your line by 4 to automatically create a code block
- **Inline Code Block**  Wrap back ticks (the key right under escape) to code block a words in the line. 
- **Links** - [title] immediately followed by (url)
- **Headings** #, ##, ### - they can go up to six levels. 

# Publishing channels 
Using  the above infrastructure (Operating system, Shell, Editor and Markdown), you can publish your works through many channels. 

## Blog (Jekyll )

[Jekyll](https://jekyllrb.com/) is  a tool to suck up a website and render on web with least back and forth with server. It works great with static websites (blogs). That much for technology :-)  For a reader, it offers beautiful and instant reading environment; from writer standpoint , it has ton of customizable templates to host your content. Its a default hosting mechanism of GitHub pages as well. My blog is hosted on gh pages and thus you are reading this text via jekyll. 

Jekyll offers a number of [themes](https://github.com/jekyll/jekyll/wiki/Themes) to get you started quickly with a blog (or static website). 
## Screen Play writer (Fountain )

[Fountain](https://fountain.io/)  is inspired by simplicity of markdown for writing screenplays. Screenplay writers can write their scenes (or a full play) in text files using fountain tags and the files can be easily imported into Final Draft, Movie magic or Celtx. , The idea of Fountain is simple but very powerful. It defines tags for describing a scene. For example we use 
- **Scene Headings** can be described with INT. or Ext. (INT for Interior and EXT for exterior) . These notations are followed by the scene name. 
- **Character Names** are all CAPS as in JIM
- **Parentheticals** describe the action of a character while they start speaking. (revving up the engine)
- **Dialogues** come right below Parentheticals. 
- And there are many more. But they are easy to remember. 

Files are saved as .fountain'. There is a vim' plugin , that highlights the .fountain' tags.. 
This means you can write a complete screenplay without having to worry about the format future production will use. 

## Online and eBooks 

[Gitbooks](https://www.gitbook.com) is probably the best way to indulge in writing books. You will need [npm](https://www.npmjs.com) to install the `Gitbook cli` - A command line interface for writing Gitbooks. npm is the package manager for node.js. In addition to providing the tools for writing, Gitbooks also provides free publishing of free books. And a nominal charge for priced books. Gitbooks can easily be covered into eBooks (with Calibre) for publishing on Amazon or Apple iBooks.

# Writing Aids

## Formats Conversion (Pandoc )
While .md' is a great way to publish online, many times we need to send offline copies. That is where [Pandoc](http://pandoc.org/index.html) comes in. A swiss-army knife for format conversion. Pandoc is open source, it can convert almost into any possible format. Most notable are Adobe pdf and Microsoft Word for writers. We need latex-engine installed for Pandoc to be able to convert to .pdf'. If you don't want to install latex, you can always convert to Open or Microsoft Office and then push a .pdf export. The syntax is very simple

	Pandoc file_name -o file_name.pdf

> Pandoc needs Haskell compiler (ghc) and Haskell Platform. Slackware 14.2 doesn't include these by default but [slack builds](https://slackbuilds.org) are available. Ghc takes a lot of space to compile ~4.5 gigs. 


## Text Browser (Links)
Links is a simple fast text browser. It works great on command line without X (Graphical user interface). The older brother is Lynx which is bit faster but doesn't support frames. The best thing about text browsers is the distraction free environment for browsing if thats is what you really want to do. 

### Basic Commands
- `g` provides a dialog box for typing in the url
- `Esc` Brings up the menu. Easily navigable with arrow keys or shortcuts
- `Arrow keys` Move from link to link with up and down arrows, even if the links are in the same row. 
- `z` move  to the previous page
- `d` Download from the link. A dialog box will let you type in the directory where you want to save the file.

## Search (Googler) 
The web-search plugin in 'Oh my zSH' doesn't support the console (without X). Googler does this. 
> Googler needs Python3 which is not a default on Slackware 14.2. You can install from the available Slackbuild. You may also need to to export your browser. 

	export BROWSER=links

Once you are done with installation, browser export and spent 15 minutes in Googler, I bet you will never go back to browser based search particularly on a GUI. It is fast, clean and there are many more things you can do with `googler`.

- `?` opens a basic help in line on the terminal
- `n , p` moves you next ten search results forward or backward. 
- Each search result has a number. Entering the search number on the cursor will opne the search page in links
- You can come back to `googler` (from links) with links's `q` command. And continue where you left off. Press a `n` and then `p` to come back to same set of results. 
- A double enter or `q` exits the googler
- You can export different browsers in separate sessions of `fbterm`. Lynx is a good option to explore. Very fast. 

## Cloud Storage (Mega)
Even though you can share your files through GitHub , you may still have content that you want to share among your computers privately, across platforms and mobile device. Unfortunately Google doesn't provide a auto sync for Linux (strange!!) . Mega provides a GUI as well as command line based interface (and 50 gigs of free storage) that works on Windows , Macs, Linux, Android and iOS. God's gift. I don't understand all the subtleties but it says it is fully encrypted. 

We are interested here in the Mega Command line tools that let you sync with cloud storage from the comfort (and speed) of your terminal. Good folks at Slackware provide a Slackbuild for Mega command line tools. A must use for any writer and coder as well. 

Once you have registered a new account with command `megareg` or added  your existing account information to `.megarc`, Mega storage is just an extension of your harddisc.  Similar commands ( each has its on man page) 

- `megamkdir` - For creating a directory on your cloud account 
- `megals` - Just like ls on your computer to list directories and files
- `megadf` - Just like df on your computer to show the storage consumption 
- `megacopy`- to sync a local directory with cloud or vice versa

## Email 
Good old email is a must have for writers. Command line has numbers of solid email clients. I use Alpine. Its simple, user friendly but the composing messages (editor) is very limited. I think mutt has a lot better integration with vim for writing longer emails. 

## Voice Memos

Writers are often struck with inspiration. Complex ideas are difficult to write down without proper pre thinking. The best is to quickly voice record and come back to listen when time permits. Command line has three primary tools to record voice. I am sure there are more that I am unaware of . Lets first look at the oldest of all . The good old SoX.

### SoX - Sound Exchange 

It doesn't get simpler than SoX. All you need  to say on command line is 

	rec voice-memo.wav
	# It will record a voice memo in wav format
	rec voice-memo.ogg
	#will do the same in ogg format

To save space on your disc you can always convert .wav or .ogg files into mp3s

	lame voice-memo.wav voice-memo.mp3

Converting wav files to mp3 format yields a 90% space savings but mp3 is not a free format. Rather use open .ogg format that sometimes give even better results than mp3 in terms of space saving without any perceptible loss in audio quality. SoX can convert to .ogg without any other package (eg lame) 

	sox voice-memo.wav voice-memo.ogg

The recorded files can be played with 

	play voice-memo.wav (or ogg or mp3)

In addition to record and play , SoX can be used to do many sound files operations as well effects. For example, we can trim a file out of an exiting file , concatenate multiple files, mix files. Increase or reduce volume, echo , chorus, noise reduction. SoX can also automagically record from a audio input (eg CDs ) or rip streaming audio. 

### Alsa utilities

ALSA stands for `Advanced Linux Sound Architecture`. The primary goal of ALSA project was to give Linux a 'plug and play' capability for identifying computer sound cards. In essence Alsa works as the software interface for the sound hardware. Alsa builds over `Open Sound System (OSS)` the default sound system in Unix.  

In addition to hardware interfaces, Alsa provides simple utilities to record and play sounds. 

	arecord -f cd voice-memo.wav
	#will record a compact disk quality voice memo. (44100 Hz, 16 bit , Stereo)
	arecord -f dat voice-memo.wav 
	#will record a better sound if your PC sound card supprts (48000 Hz , 16 bit , Stereo)
	aplay voice-memo.wav #will play the recoded file.

Once you have the recorded files , you can use SoX for sound operations as well effects. 

In my experience, the files recorded with `arecord` sounded a little better than `rec` though my test wasn't properly bench marked and my equipment is really old. 

### ffmpeg

ffmpeg is primarily a video converter but it can be used for sound recording on command line. 

	ffmpeg -f alsa -ac 2 -i pulse voice-memo.wav
	# should record your microphone. 

# Fun Stuff

Yes, we need to indulge sometimes. Writing is not an easy job. Mind needs to relax. What's better than music ?

## Music

Simple console command `play` can play any mp3 or .ogg files. Prefer .ogg as its open source v/s mp3 which I guess is a proprietary format.

You can download YouTube  videos  with `youtube-dl <youtube url>` and then rip the audio piece with `ffmpeg`. To make it simple, let `ffmpeg` handle the codecs with command below 

	ffmpeg -i videofile.mp4 -vn -acodec libvorbis audiofile.ogg
	(-i is for input video file; -vn is nor no video; -acodec allows ffmpeg to determine the audio format of the input vidio file on and libvorbis helps to make it .ogg )

You can use `-acodec libmp3lame` and change the extension of output file to mp3 for mp3 encoding. 
Both `youtube-dl` and `ffmpeg` are available on Slackbuilds.org

If you don't want to copy the urls of the YouTube videos from a graphical interface, the easiest way is  to use `gvsearch` and pass on the url to `youtube-dl`

It might appear a lot of work but once you have these two long commands in your terminal, you can arrow up /down to get to to them (or search your command line history). Offline listening is really fun :-) c


	youtube-dl "gvsearchX:search tag" 
	(X stands for the number of hits you want to pass on ..typically 1)


## Chat
There are many command line tools that support IRC (Internet Relay Chat). I find `irssi` very friendly and stable. The most populated and probably only growing IRC network in `freenode`. There are chartrooms for practically every interest or topic and IRC allows one on one direct messaging. `irssi` comes prepackaged with Slackware 14.2. 

Here are basic commands to get you started. 

	"Connecting to a network 
	/connect freenode #you can replace freenode with dalnet or efnet ( these are big networks - think of them as Slack or WhatsApp)
	"By default, irssi will connect you as as your host name. The name you are joining with is called your `nick`
	"Rarely you would expose your hostname on the IRC network. So you can set up your nick whatever you want 
	/nick ThisIsMyNewNick
	"With your new nick, you can join any channel that might interest you. Try out #writers on freenode.
	/j #writers 
	"typically channel names start with a #. A sub channel will start with ##. You can close a channel with 
	/part
	"To quit irssi
	/quit
	"Finding a channel on freenode
	/msg alis LIST  *Searchterm for Channel* #alis is a freenode service that messeges back the channel info.
	/msg alis LIST *Linux* -min 20 would find all the linux related channels with minimum 20 nicks


Some of the busy channels would require you to have your nick verified with the network. You can do that on freenode.net. Most of the channels will have a mode `+i` set . Which means these channels are invite only. You can look up channel modes on freenode.net
