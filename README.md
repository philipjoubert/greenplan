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

Most of the files you want to modify are in the **source** folder. Don't make the mistake of editing files in the *build* folder.

####SourceTree
I use a program called [SourceTree](https://www.sourcetreeapp.com/) to manage repositories. There are alternatives but I'd recommend you stick with SourceTree. It also helps that it's free.

####Text Editor
The best text editor is probably [Sublime Text](https://www.sublimetext.com/). The only problem is that Sublime costs $60. A free alternative is [https://atom.io/](https://atom.io/), and it's possibly as good as Sublime. 

1. Install Sublime Text
2. Install [Package Control](https://packagecontrol.io/installation)

Useful packages:
* Sass
* MarkdownEditing
* SidebarEnhancements

### Deploying Updates

To create a new build of the website run:

    bundle exec middleman build

This adds the HTML/CSS files in the **build** folder. Static resources like powerpoint presentations are not automatically added to the build folder, and have to be manually copied. 

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
    
    source/designbuilder/training

####Images for modules
Images for case studies are organized in folders as follows:
    
    images/case-studies/[case-study-name]

###Training courses
The data for upcoming training courses is stored in 

    data/designbuilder/training.json

The format of .json files is extremely import. The most common mistake to make is adding an extra comma or leaving a comma out.

    {
      "courses": [
            {
                "date": "18 April",
                "location" : "Stellenbosch",
                "title" : "DesignBuilder Modeller",
                "description" : "The first course is the introduction to the DesignBuilder interface, with a focus on model input information and drawing models."
            },
            {
                "date" : "19 April",
                "location" : "Stellenbosch",
                "title" : "DesignBuilder Simulation",
                "description" : "The focus of this course is on running simulations and extracting data from DesignBuilder."
            },
            {
                "date": "20 April",
                "location": "Stellenbosch",
                "title": "Using DesignBuilder for SANS 10400 XA",
                "description": "This course shows how DesignBuilder is easily used to comply with the SANS 10400 XA building regulation by following the building energy modelling route."
            }
        ]
    }


###Consulting services
Consulting services are located in
    
    source/consulting

###Markdown

**Note:** You can't add markdown inside HTML tags

Quotes

    <blockquote>

Introductory text

    <p class="intro-paragraph">

Images
    
    ![](case-studies/hermanus/hermanus-1.png)

**Jpeg** images tend to be smaller in size than pngs.

####Tables
Tables are built using standard HTML tables. Use the existing tables are references

**Note:** Tables in HTML are built row by row

    <table class="table">
        <thead>
        <tr>
            <th>Description</th>
            <th>Visual light transmittance</th>
            <th>Solar Heat Gain Coefficient</th>
            <th>U-value</th>
        </tr>
        </thead>
        <tbody>
            <tr>
                <td>Single</td>
                <td>0.88</td>
                <td>0.82</td>
                <td>5.8</td>
            </tr>
            <tr>
                <td>Single</td>
                <td>0.81</td>
                <td>0.59</td>
                <td>4.23</td>
            </tr>
        </tbody>
    </table>