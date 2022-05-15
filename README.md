[![Produce and Publish PDF](https://github.com/robert-will-brown/cv/actions/workflows/produce-pdf.yml/badge.svg?branch=main)](https://github.com/robert-will-brown/cv/actions/workflows/produce-pdf.yml)

# Rob Brown's Curriculum vitae (Résumé)

<p>
  <a href="https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv.pdf">
    <img src="https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv-thumbnail-p1.jpg" height="420">
    <img src="https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv-thumbnail-p2.jpg" height="420">
  </a>
</p>


This is my CV which I write in LaTeX and generate various end formats via an automated Github Action.  Why?  It looked fun and actually it's a handy way to make updating it low friction.  Plus as its all automated so I can do "clever" stuff like ensuring the thumbnail above always shows the latest version.

# How It Works
If the TEX file `rb-cv.tex` is updated and pushed to the `main` branch, a github action is triggered.  This action:

 1. Replaces tokens in the source file.  The date, git branch and git hash is added to the footer to make identifying the version of the file easy
 1. Generates a PDF from the LaTeX file
 1. Generates a Thumbnail JPG from the PDF
 1. Uploads the PDF and Thumbnail to a [publicly accessible S3 bucket](https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv.pdf)

This is a very tight representation of my work history, only ever two pages and is linked from my [Github Pages](https://robert-will-brown.github.io) portfolio which adds more detail than the small space a CV can cover.


The github action replaces tokens in the source file for versioning.  The date, git branch and git hash is added to the footer to make identifying the version of the file simple.
