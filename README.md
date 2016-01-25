# Docker build for the Ensime web site

## Building

        docker build -t ensime/jekyll .

## Running

       cd your-jekyll-site
       docker run --rm --label=jekyll --volume=$(pwd):/site -it -p 4000:4000 ensime/jekyll

...open the site on the address where your docker machine is runnning. E.g., http://192.168.99.100:4000/

CTRL-C to make it stop.

