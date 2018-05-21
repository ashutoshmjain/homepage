   Link: canonical
   Menu
   Lifewire 
   Get to Know Cascading Style Sheets With This CSS Cheat Sheet
   Search 
   Search the site _____________________ GO

    Web Design & Dev

     * CSS 
     * Basics 
     * HTML
     * How To
          * Windows
          * Macs
          * iPad
          * iPhone
          * Android
          * Internet & Network
          * Digital Cameras
          * Home Theater
          * Email & Messaging
     * Fix
          * Windows
          * Macs
          * iPad
          * iPhone
          * Internet & Network
          * Digital Cameras
          * Home Theater
          * Getting More Help
     * Buy
          * Buying Guides
          * Product Reviews
          * Software & Apps
     * Do More
          * Web & Search
          * Social Media
          * Gaming
          * New & Next
   IFrame
   How To  Web Design & Dev

                                   Get to Know Cascading Style Sheets With This CSS Cheat Sheet

An Overview of Cascading Style Sheets With Sample Style Sheet

     * Share
     * Pin
     * Email
   Print 
   Cheat Sheet
   Pin to Pinterest
   ilbusca/Getty Images
   Web Design & Development

    Web Design & Dev

     * CSS 
     * Basics 
     * HTML
   by Jennifer Kyrnin
   Updated February 14, 2018

   When you build a website from scratch, it's smart to start with the basic styles defined. It's like starting with a clean
   canvas and fresh brushes. One of the first problems that web designers face is that web browsers are all different. The
   default font size is different from platform to platform, the default font family is different, some browsers define margins
   and padding on the body tag while others do not, and so on. Get around these inconsistencies by defining the default styles
   for your web pages.

  CSS and the Character Set

   First things first, set the character set of your CSS documents to utf-8. While it is likely that most of the pages you
   design are written in English, some may be localized—adapted for different linguistic and cultural context. When they
   are, utf-8 simplifies the process. Setting the character set in the external style sheet won't take precedence over an HTTP
   header, but in all other situations, it will.

   It's easy to set the character set. For the first line of the CSS document write:

 @charset "utf-8";

   This way, if you use international characters in the content property or as class and ID names, the style sheet will still
   work correctly.

  Styling the Page Body

   The next thing a default style sheet needs are styles to zero out margins, padding, and borders. This makes sure that all
   browsers place the content in the same place, and there aren't any hidden spaces between the browser and the content. For
   most web pages, this is too close to the edge for text, but it's important to start there so that background images and
   layout divisions are lined up correctly.

 html, body {
 margin: 0px;
 padding: 0px;
 border: 0px;
 }

   Set the default foreground or font color to black and the default background color to white. While this will most likely
   change for most webpage designs, having these standard colors set on the body and HTML tag at first makes the page easier to
   read and work with.

 html, body {
 color: #000;
 background: #fff;
 }

  Default Font Styles

   The font size and font family are something that will inevitably change once the design takes hold but start with a default
   font size of 1em and a default font family of Arial, Geneva, or some other sans-serif font. The use of ems keep the page as
   accessible as possible, and a sans-serif font is more legible on the screen.

 html, body, p, th, td, li, dd, dt {
 font: 1em Arial, Helvetica, sans-serif;
 }

   There may be other places where you might find text, but p, th, td, li, dd, and dt are a good start for defining the base
   font. Include HTML and body just in case, but many browsers override the font choices if you only define your fonts for the
   HTML or body.

  Headlines

   HTML headings are important to use to help your site outline and let search engines get deeper into your site. Without
   styles, they are all fairly ugly, so set default styles on all of them and define the font family and the font sizes for
   each.

 h1, h2, h3, h4, h5, h6 {
 font-family: Arial, Helvetica, sans-serif;
 }
 h1 { font-size: 2em; }
 h2 { font-size: 1.5em; }
 h3 { font-size: 1.2em ; }
 h4 { font-size: 1.0em; }
 h5 { font-size: 0.9em; }
 h6 { font-size: 0.8em; }

  Don't Forget the Links

   Styling the link colors is almost always a critical part of the design, but if you don't define them in the default styles,
   chances are you'll forget at least one of the pseudo-classes. Define them with some small variation on blue and then change
   them once you have the color palette for the site defined.

   To set the links in shades of blue, set:

     * links as blue
     * visited links as dark blue
     * hover links as light blue
     * active links as even paler blue

   as shown in this example:

 a:link { color: #00f; }
 a:visited { color: #009; }
 a:hover { color: #06f; }
 a:active { color: #0cf; }By styling the links with a fairly innocuous color scheme it ensures that I won't forget any of the classes, and also makes them a little less loud than the default blue, red, and purple.

  Full Style Sheet

   Here is the full style sheet:

 @charset "utf-8";
 html, body {
 margin: 0px;
 padding: 0px;
 border: 0px;
 color: #000;
 background: #fff;
 }
 html, body, p, th, td, li, dd, dt {
 font: 1em Arial, Helvetica, sans-serif;
 }
 h1, h2, h3, h4, h5, h6 {
 font-family: Arial, Helvetica, sans-serif;
 }
 h1 { font-size: 2em; }
 h2 { font-size: 1.5em; }
 h3 { font-size: 1.2em ; }
 h4 { font-size: 1.0em; }
 h5 { font-size: 0.9em; }
 h6 { font-size: 0.8em; }
 a:link { color: #00f; }
 a:visited { color: #009; }
 a:hover { color: #06f; }
 a:active { color: #0cf; }

   Continue Reading
     * Browsers you should be testing with

    How to Make a Master Stylesheet to Override Browser Styling

     * CSS

    What does Cascade mean in Cascading Style Sheets?

     * Create the CSS Style Sheet

    How to Use Notepad to Write CSS for a Web Page.

     * cascading waterfall

    Here Is a Look at What the Cascade Means in Cascading Style Sheets

     * Website displayed on screen

    How to Use CSS to Sytle Links (Buttons, Colors, and More)

     * lines of code

    Learn About the Font Tag Versus Cascading Style Sheets for Font Styles

     * Young woman working with wireless technology

    CSS Comments: How to Add and Use Them

     * Filetype icons

    A Look at What CSS Is (Cascading Style Sheets)

     * HTML and CSS code in an IDE environment

    Styling XML Documents with CSS

     * Create a New Character Style

    Learn About Using Character Style Sheets in Adobe InDesign

     * Man doing web design at desk.

    Build a 3-Column Layout in CSS With These Simple Instructions

     * CSS3

    What is CSS3?

     * Game tile letters

    How to Make Fancy Website Headings with CSS

     * The Benefits of Cascading Style Sheets

     * What Should I Name My CSS Style Sheet File?

     * Intelligent female programmer

    What Is CSS 'Inheritance' and How Do You Use It?

   Lifewire
   Get the Most From Your Tech With Our Daily Tips
   Email Address _____________________ Sign up

   There was an error. Please try again.

   You're in! Thanks for signing up.
   There was an error. Please try again.

   Thank you for signing up.

   Follow Us
     * Facebook
     * How To
     * Fix
     * Buy
     * Do More
     * About Us
     * Advertise
     * Privacy Policy
     * Careers
     * Contact
     * Terms of Use
