## Greenplan Website

### Tech used for the site

* Ruby
* [Bootstrap 4](http://v4-alpha.getbootstrap.com/)
* [Middleman](https://middlemanapp.com/)

### Installing Ruby and Middleman

1. Install Ruby with the installer from http://rubyinstaller.org/
2. Gem install Middleman
3. Navigate to the folder
4. Bundle install

### Development

Start the middleman server

    bundle exec middleman s

####Text Editor
The best text editor is probably [Sublime Text](https://www.sublimetext.com/).

1. Install Sublime Text
2. Install [Package Control](https://packagecontrol.io/installation)

Useful packages:
* Sass
* MarkdownEditing
* SidebarEnhancements

### Deploying Updates

To create a new build of the website run:

    bundle exec middleman build

This added the HTML/CSS files in the **build** folder. Static resources like powerpoint presentations are not automatically added to the build folder, and have to be manually copied. 

The site is hosted on [Netlify](https://www.netlify.com/).

Drag the contents of the **build** folder to Netlify.

###Case studies

Case studies are located in
    
    source/case-studies

####Adding case studies
To add a new case study the fastest would be to duplicate an existing case study file, delete the content and change the *meta data* at the top.

####Images for case studies
Images for case studies are organized in folders as follows:
    
    images/case-studies/[case-study-name]

###Training modules
Training modules are located in
    
    source/training

####Images for modules
Images for case studies are organized in folders as follows:
    
    images/case-studies/[case-study-name]

###Consulting services
Consulting services are located in
    
    source/consulting


###Markdown

Quotes

    <blockquote>

Introductory text

    <p class="intro-paragraph">

Images
    
    ![](case-studies/hermanus/hermanus-1.png)

**Jpeg** images tend to be smaller in size than pngs.

####Tables
Tables are built using standard HTML tables. Use the existing tables are references