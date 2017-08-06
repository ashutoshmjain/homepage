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

As a project manager I always wanted developers to put comments in their code. Elaborate, unambiguous and over communicate.And make them really meaningful for the next one touching the code. Saying used to go around "code like a writer". I think reverse too is true. Writing like a coder, makes you lot more efficient, reusable and easy to read. This post is about my discovery of tool set to bring a coder paradigm into my writing. 

# linux
<hr><a name="linux"></a> Not only linux is free, it runs fast on old machines. For a hobbyist writer (assuming unsuccessful :-), its the best alternative to MacOS (and probably better). The beauty of Linux truly shows up in huge variety of distributions granularly designed for every segment of users.  I tried many variants of Ubuntu before settling with Slackware. Primary reason - its unassuming , hack able to the core and zero frills. I am sure, I will keep on exploring more. For example, recently I tried bunch of Puppies. Truly amazed with their agility. Point is - just pick up an old machine ( or install Virtual Box  on your work machine) and start with any Linux distribution. There are ton of tutorials on internet to get you started. If you are starting fresh, I will highly recommend Linux Mint. If you have your feet wet, jump into Slackware here.

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
<hr><a name="git"></a> Ipublish my blog on the github. 
- git clone - to clone a repo on my machine . It will automatically create a directory for the repo. 
- git add - to stage the chnages to exiting posts or new posts.
- git commit - to commit the changes 
- git push - to publish the changes to git hub. 
# tmux

<hr><a name="tmux"></a> Here are the commands that I regularly use as a writer.

- tmux - to start a new tmux session  ( I can assign it a name with -s)

**I have remapped the pan operations to key 'a' (in place of b) for easy reach.**

- (ctrl) a | to split a new horizontal pan
- (ctrl) a - to split a new vertical pan
- (ctrl) a o to jump to next pan
    
# vim
<hr><a name="vim"></a> Here are the commands that I regularly use as a writer.

- zo , zc  - My vim is set up to fold the lines between TOC references. A good idea when you are handling a large document. You need to see the whole document folded based on TOC. You can jk yourself to the area you want to work and the zo (in normal mode) to open the fold. Once done, or if you want to go to other fold , just zc the current fold to close it. 
# markdown 
<hr><a name="md"></a> lets just say that markdown easier way to create html documents. Rather than using difficult tags, markdown supplies a set of notations that are work well when document is displayed by a browser. Github automatically shows the README.md on the front page of repository just below all the files. Good integration. 

# jekylll 
<hr><a name="jk"></a> jekyll a tool to suck up a website and render on web with least back and forth with server. It works great with static websites (eg blogs). That much for technology :-)  For a reader, it offers beautiful and instant reading environment; from writer standpoint , it has ton of customizable templates to host your content. Its a default hosgting mechanism of github pages as well. My blog is hosted on gh pages and thus you are reading this text via jekyll. 

# fountain 

<hr><a name="fn"></a> Fountain is markdown "on steroids" for writing screenplays. I haven't used it yet cuz I have never written a screenplay but it is on my todo to explore this space. 
