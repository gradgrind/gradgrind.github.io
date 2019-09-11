# gradgrind.github.io

A static site generator using mkdocs with theme "material".

The content is mathematics for school use, using mathjax for displaying mathematical notation.

The source markdown files are in src/docs.

To update the site content run the script update.sh in the base directory.

It is also possible to generate a pdf file from a markdown file using pandoc. The script src/topdf.sh is a rather primitive assistant. The base directory 'docs' is assumed, as is the ending '.md'. Run it in the src directoy, e.g.:

    ./topdf.sh Klasse_13/Ableitungsregeln

The result will be placed in the 'pdf' directory.
