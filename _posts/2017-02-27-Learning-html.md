---
layout: post
title:  "My html notes"
date:   2017-02-27
desc: "My notes from learning html"
keywords: "html, web"
categories: [Inspirations]
tags: [html, web]
icon: icon-fire-alt
---

* [Intro](#Little blurb on html)
<a href="Basic"> The basic tags </a> <br>
<a href="Links"> Embedding links </a> <br>
<a href="Images"> Inserting Images </a> <br>
<a href="Head"> The 'head' tag </a> <br>
<a href="Format"> Formatting the text </a> <br>
<a href="Cool"> Other cool stuff </a> <br>

<hr>
<a name="Intro"></a> html is a way for web browser to read, understand and display the content. The beauty of html is in its simplicity. And that is the primary reason for it to become by far the most widely used computer technology.

```
<!DOCTYPE html>
<html>
<head>
<title> Page Title </title>
</head>
<body>

<h1> My First Heading </h1>
<p> first paragraph </p>

</body>
</html>

```

Each element (commonly known as tag) of html is embedded in <>. / indicates the end of the tag. Tags basically tell different browsers how to interpret the text. Browsers show the content embedded with in 'body' tags. Simplicity of this schema allows same content displayed irrespective of browser type or underlying operating system. Isn't it amazing that millions (probably billions) of web pages are written using these simple html tags.

html was fist introduced in 1991. It has grown in scope and sophistication in last 25 years. The latest version html 5.0 was released in 2014.

Since its so simple, most of the html can be automated. It is still very important to type html to get a good feel. The best way to learn html is to use an editor like Atom that can provide a preview of what you are writing. Alternatively you can use notepad or textEdit. Or any other editor.   

# <id ="Basic"> The Basic tags

As shown in the example above, the basic tags are body, headings (h1, h2, h3 and so on), and paragraph. These are in themselves enough to write as much content as we need, but quite often we need to embed the links to other internet pages. That's what makes the internet a web :-)

## <id="Links">  Links

href is the attribute that defines a link in an html page. The tag is 'a'

```
<a href="http://www.google.com" taregt="_blank"> The google </a>
```
Note that the attribute (url and target) goes into the starting tag and that is a rule. The content is basically the title of the link followed by the closing tag. Attribute target defines where the link is opened. 'blank' indicates that the link should be opened in a new window or tab.

**By default the urls are colord blue underlined for unvisited links , purple undrlined for the visited ones and red underlined for the active ones.**

## <id="Images">  Images
They say a picture is worth thousand words. I personally don't believe it but who am I ? People want to see  pictures on web pages and html does that with elegance. The tag is 'img' and it comes with number of attributes

```
<img src="https://ashutoshmjain.github.io/homepage/static/img/landing/header_one.jpg"  alt="Green Green" width= "1300" height= "1000" >
```
Note that the end tag is optional. Attribute 'src' indicates the source. It can be a file or a url. 'alt' is the text that gets displayed in case the picture isn't found. Width and height are self explanatory.

 *Goes without saying that the tags can be nested. They are not case sensitive. And many of them don't need a closing tag. You don't need to put quotes around attributes. html really loves you :-) But thats all there to catch mistakes. Just keep all of them lower case. Always close them and keep your nesting simple. And yes keep your attributes quoted just in case you hit some unforgiving browser.*

# <id="Head"> Head

The 'head' tag has nothing to do with the header. This is actually  used to define the meta data for the html page. This can include page title, character set, language, style and host of other things.

More information on this later.

# <id="Format">  Formatting

html allows sophisticated formatting
```
<b> this is bold text </b>

and like wise

<strong> for imporant text.
<i> for itallic
<em> for emphasis
<mark> for marked text
<del> for deleted text
<small> for small text
<ins> for inserted text
<sub> for subscript
<sup> for superscript

```
<b> this is bold text </b> <br>
<strong> this is strong text </strong> <br>
<i> this is italicized text </i> <br>
<em> this is emphasized text </em> <br>
<mark> this is marked text </mark> <br>
<del> this text is deleted </del> <br>
<small> this is small text </small> <br>
<ins> this text is inserted </ins> <br>
<sub> this is subscript </sub>
<sup> this is superscript </sup>

#<id="Cool"> Other cool stuff
 **'br'** is used to add a break in continuous text.<br>
 **'hr'** is used to insert a line <br>
 **'q'** is used for the quotation mark <br>
 **'blockquote'** is used normally used for quoting a different source. Browsers will indent the quote. <br>
 **'address'** is used for address info. Browsers will add a line above and below the element. <br>
 **'kbd'** is used for console inputs. <br>
 **'smp'** is used for console output. <br>
 **'code'** is used for programs. <br>
 **abbr** is used for abbreviation. The full description goes as title attribute. Example below

 ```
 <abbr title="Pricewaterhouse Coopers"> PwC </abbr>
 ```
**comments** can be added to the page as below <br>
```
<!--This is comment -->
```
 **'pre'** is used to insert a pre-formatted text mostly for poems. Example below<br>

<pre>
this
is a
poem
</pre>
