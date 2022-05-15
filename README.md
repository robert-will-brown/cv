[![Produce and Publish PDF](https://github.com/robert-will-brown/cv/actions/workflows/produce-pdf.yml/badge.svg?branch=main)](https://github.com/robert-will-brown/cv/actions/workflows/produce-pdf.yml)

# Rob Brown's Curriculum vitae (Résumé)

<p>
  <a href="https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv.pdf">
    <img src="https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv-thumbnail-p1.jpg" height="420">
    <img src="https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv-thumbnail-p2.jpg" height="420">
  </a>
</p>


This is my CV which I write in LaTeX and generate various end formats via an automated Github Action.  Why?  It looked fun and it's turned out to be a quick low friction method of keeping it updated. Plus, as its all automated I can do "clever" stuff like ensuring the thumbnail above always shows the latest version.

# How It Works
If the TEX file `rb-cv.tex` is updated and pushed to the `main` branch, a github action is triggered.  This action:

 1. Replaces tokens in the source file - the date, git branch and git hash is added to the footer to identify the version of the file.
 1. Generates a PDF from the LaTeX file.
 1. Generates a Thumbnail JPG from the PDF.
 1. Uploads the PDF and Thumbnail to a public S3 bucket (click on the thumbnails above to see the resultant PDF).

# My CV
This is a concise summary of my work history at only two pages.  It contains links to my [Github Pages Portfolio](https://robert-will-brown.github.io) which adds more detail than the small space a CV allows. 

# Credits
Thanks to:
 - original author of template
 - AJS
