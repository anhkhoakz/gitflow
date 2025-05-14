# list available commands
default: help
    @just --list

# usage information
help:
    @echo "Usage: just [command]"

# minify CSS files
minify:
    minify stylesheets/stylesheet.css  -o stylesheets/stylesheet.min.css
    minify stylesheets/pygment_trac.css  -o stylesheets/pygment_trac.min.css
    minify stylesheets/print.css  -o stylesheets/print.min.css
    minify params.json  -o params.json

# compress images
compress-image:
    clop optimise images/body-bg.png
    clop optimise images/hr.png
    clop optimise images/tar-gz-icon.png
    clop optimise images/highlight-bg.jpg
    clop optimise images/octocat-icon.png
    clop optimise images/zip-icon.png
