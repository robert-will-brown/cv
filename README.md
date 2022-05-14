[![Produce and Publish PDF](https://github.com/robert-will-brown/cv/actions/workflows/produce-pdf.yml/badge.svg?branch=main)](https://github.com/robert-will-brown/cv/actions/workflows/produce-pdf.yml)

# Rob Brown's Curriculum vitae (Résumé)

This is my CV which I write in LaTeX and generate various end formats via an automated Github Action.  Why?  It looked fun and actually it's a handy way to make updating it low friction.

# How It Works
If the TEX file `rb-cv.tex` is updated and pushed to the `main` branch, a github action is triggered which generates the creation of a PDF file which in turn is uploaded to a [publicly accessible S3 bucket](https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv.pdf).

This is a very tight representation of my work history, only ever two pages and is linked from my [Github Pages](https://robert-will-brown.github.io) portfolio which adds more detail than the CV.


The github action replaces tokens in the source file for versioning.  The date, git branch and git hash is added to the footer to make identifying the version of the file simple.
