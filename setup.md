---
layout: page
title: Setup
---
## Setup instructions

This course assumes that you are familiar with R, RStudio and basic commands
in R. 

You should therefore already have R and Rstudio installed and running on your 
computer.

### Make sure you have a fairly recent version of R and RStudio installed

* Open RStudio, and click on "Help" > "Check for updates". If a new version is
	available, quit RStudio, and download the latest version for RStudio.
* To check the version of R you are using, start RStudio and the first thing
  that appears on the terminal indicates the version of R you are running. Alternatively, you can type `sessionInfo()`, which will also display which version of R you are running. Go on
  the [CRAN website](https://cran.r-project.org/bin/macosx/) and check
  whether a more recent version is available. If so, please download and install
  it. In any case, make sure you have at least R 4.0.


### If everything else fails
* Go to [rstudio cloud](https://rstudio.cloud/), and sign up for a free account.
  Rstudio cloud offers five free projects (delete one if you need to make a sixth).
  System ressources are limited, but more than enough for this lesson.

### In preparation for this course

**you need to install a selection of packages.**

* After starting RStudio, at the console type:
  `install.packages("tidyverse")`
  `install.packages("tsibble")`
  
Do not be scared of red text during the installation. If each of the two 
commands results in 

`package ‘package-name’ successfully unpacked and MD5 sums checked`

everything is fine.

* Start a new project
- At the upper right hand corner of RStudio click and choose "New Project..." 
  Call the project whatever you lik.

* make data folder
write 
dir.create("data")
on the console to make a data folder in your project 

Finally download the example dataset that we are going to work with.


{% include links.md %}
