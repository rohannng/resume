## Rohan Grover's Resume 

My Resume made using LaTeX, style used from https://github.com/posquit0/Awesome-CV


## Dependencies :
Full installation of Latex Live

    XeLaTeX command

## Running Env - Docker container

Run using the rohannng/texlive-full docker image. Mount the dir and run

    docker run \
    --volume $(pwd):/data \
    rohannng/texlive-full:main \
    make

## Running - baremetal

On linux install latex using the following command

    sudo apt install texlive-full

On Mac 
    download MacTeX http://www.tug.org/mactex/mactex-download.html
    enusre you have FontAwesome installed https://ctan.org/tex-archive/fonts/fontawesome

## Run options

Run the following command to generate the pdf files for both versions of resume

    make

To generate only short resume

    make short

To generate only full resume

    make full


Or get Visual Studio Code and install the LaTeX Workshop extension and its pre-requisites for preview capabilities
* https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop


References
* https://github.com/posquit0/Awesome-CV
* https://stackoverflow.com/questions/1017055/get-started-with-latex-on-linux
* https://www.maths.tcd.ie/~dwilkins/LaTeXPrimer/TypicalInput.html
* https://en.wikibooks.org/wiki/LaTeX
* https://www.latex-tutorial.com/tutorials/


## SDLC

This repo uses 
* GitHub actions for automated builds
* Feature branch git workflow when required.

Checkin to the main branch to trigger the build pipeline. Check the github actions tab to view produced resume artifacts.
Create a tag to trigger the release pipeline.

