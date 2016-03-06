## Greenplan Website

### Tech used for the site

* Ruby
* [Bootstrap 4](http://v4-alpha.getbootstrap.com/)
* [Middleman](https://middlemanapp.com/)

### Installing Ruby and Middleman

1. Install Ruby with the installer from http://rubyinstaller.org/
2. Gem install Middleman
3. Navigate to the folder

### Development

Start the middleman server

    bundle exec middleman s

####Adding new case studies

Case studies are located in
    
    source/case-studies

Images for case studies are organized as follows 
    
    images/case-studies/[case-study-name]

Jpegs tend to be smaller in size for anything resembling a photo or complex diagram. 

####Adding training modules


####Adding c


### Deploying Updates

To create a new build of the website run:

    bundle exec middleman build

This added the HTML/CSS files in the **build** folder. Static resources like powerpoint presentations are not automatically added to the build folder, and have to be manually copied. 

The site is hosted on [Netlify](https://www.netlify.com/).

Drag the contents of the **build** folder to Netlify.