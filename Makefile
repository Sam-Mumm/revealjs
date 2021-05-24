# var
revealjs_url=https://github.com/hakimel/reveal.js.git
imagename="revealjs"

help:
	    @echo "Makefile arguments:"
	    @echo ""
	    @echo "Makefile commands:"
	    @echo "build"

build:
	    @git clone $(revealjs_url) revealjs
	    @rm -rf revealjs/CONTRIBUTING.md \
		    revealjs/.git revealjs/.gitignore \
		    revealjs/.gitignore \
		    revealjs/LICENSE \
		    revealjs/README.md \
		    revealjs/test
	    @docker build -t $(imagename):$$(date +%Y%m%d%H%M%S) -f Dockerfile .

clean:      
	    @rm -rf revealjs

