---
layout: post
title:  "My writing workflow"
date:   2017-01-16
desc: "How to write on command line and publish on latest web"
keywords: "Opensource,command line,writing,blog"
categories: [FOSS]
tags: [Vim,Jekyll,Blog,git,GitHub]
icon: icon-ubuntu
---
I love Medium editor for its simple and beautiful interface. Before that I admired Blogger (and wordpress) just for facilitating writing directly on web. These are great tools and  I used them for more than a decade. Writing on the web is  a tad difficult than writing on regular word processors but you can do some serious writing directly on the web.  And given the tax of formatting your MS Word text to fit into Blogger or Medium, its actually more efficient to write directly on web. But ..and yes there is a but :-)

Ever since I discovered the pleasure of writing on a text editor (vim in this case), there is no going back.

So the question was, how do I write locally on vim and publish seamlessly on the internet. Kinda writing in dark and publishing on the most shiny of all. Even more beautiful than Medium. One obvious answer is to write locally and then cut paste into the web editor. Its a valid choice  and might work better if you want to publish on multiple web platforms simultaneously. For me though, I wanted to set up a system where I could publish seamlessly to just one blog. With changes tracked. And could fetch my repository on any machine. And of course .. get some geek satisfaction :-)


### Enough of background - Here is my very simple solution

* Set up a Jekyll blog on GitHub - I am using  the Jalpc Jekyll template  for this blog. There are many other simpler Jekyll blog templates available on github with very clear [Readme instructions. 
* Publish your blog to github pages (or your personal domain)
* git clone to set up the repository locally. 
* Install Jekyll gem. It will need Ruby preinstalled. For me it was preinstalled on Slackware 14.2.  Look for Jekyll insatllation help on web. There are ton of documents. 
* Fire up vim and start writing. 
* If you want to see your posts locally , start Jekyll server and checkout port 4000 of local host. Your whole blog is running on your local machine. 
* Git push your posts to github and you are done. 
