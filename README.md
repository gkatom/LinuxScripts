# LinuxScripts
Shortcuts and custom scirpts made to make work flow faster.

1. **catln** : Edit the path of your catkin directory in the code. Make it executable ***chmod +x catln*** . Add the path to PATH variable by  ***export PATH=$PATH:"/path to directory/"*** . Change directory in terminal into the  package and run catln, this will create a symbolic link into your catkin directory. 

2. **grabWebsite** : If authentication is a problem, download the cookies from the browser and use the code shown inside the file. ***wget***  is the mail command here.

`bash
    wget --mirror --convert-links --adjust-extension --page-requisites --no-parent http://example.org 
`

Explanation of various flags:

`--mirror` – Makes (among other things) the download recursive.
`--convert-links` – convert all the links (also to stuff like CSS stylesheets) to relative, so it will be suitable for offline viewing. Converting links within first page to local copy.
`--adjust-extension` – Adds suitable extensions to filenames (html or css) depending on their content-type.
`--page-requisites` – Download things like CSS style-sheets and images required to properly display the page offline (Some pages look improper with this).
`--no-parent` – When recursing do not ascend to the parent directory. It useful for restricting the download to only a portion of the site.
Alternatively, the command above may be shortened:

`wget -mkEpnp http://example.org`

Source of info:
- https://fosswire.com/post/2008/04/create-a-mirror-of-a-website-with-wget/
- https://www.guyrutenberg.com/2014/05/02/make-offline-mirror-of-a-site-using-wget/ 
- (for deatils) http://www.gnu.org/software/wget/manual/wget.html#Overview

