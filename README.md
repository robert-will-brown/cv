[![Produce and Publish PDF](https://github.com/robert-will-brown/cv/actions/workflows/produce-pdf.yml/badge.svg?branch=main)](https://github.com/robert-will-brown/cv/actions/workflows/produce-pdf.yml)

# Rob Brown's Curriculum Vitae (Résumé)

<p>
  <a href="https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv.pdf">
    <img src="https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv-thumbnail-p1.jpg" alt="Rob Brown CV Thumbnail Page 1" height="420">
    <img src="https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv-thumbnail-p2.jpg" alt="Rob Brown CV Thumbnail Page 2" height="420">
  </a>
</p>


My CV.  The source is written in LaTeX and an automated Github Action generates a PDF which is uploaded to a public S3 bucket.

# How It Works
### On Push to a New Branch (Run Tests)
If `rb-cv.tex` is updated a GitHub action is triggered which runs the `tests.yml` which has the following tests:

 1. Uses `hunspell` to check the correctness of spellings (add out of dictionary words to `/dict/words`).
 1. Use `pdfinfo` to compile the `rb-cv.tex` LaTeX file into a PDF and then check how many pages it spans.  It fails the pipeline if the resultant PDF spans more than two pages.

### On Creating a Tagged Release (Produce & Publish)
Runs the `produce-pdf.yml` pipeline which produces and publishes the CV to S3.

 1. Updates the string _"with X years experience"_ with the correct number of years I've been working.
 1. Replaces tokens in `rb-cv.tex` with the date, branch and git hash to identify the version of the file.
 1. Generates a PDF from the LaTeX file.
 1. Generates a Thumbnail JPG from the PDF.
 1. Uploads the PDF and Thumbnail to a public S3 bucket (click on the thumbnails above to see the resultant PDF).

# My CV
This is a concise summary of my work history at only two pages.  It contains links to my [Github Pages Portfolio](https://robert-will-brown.github.io) which adds more detail than the small space a CV allows.

 - <a href="https://rbcv.s3.eu-west-2.amazonaws.com/artifacts/rb-cv.pdf">Published CV</a>

# Credits
Thanks to:
 - Original Template Author - https://www.toofishes.net/blog/latex-resume-follow-up/
 - Alex Smith for reminding me I wanted to do this - https://github.com/alexjs/cv
