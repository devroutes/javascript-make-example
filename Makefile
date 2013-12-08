# Simple (default since first) rule to run your application.
run:
	@ node src/main.js

# Building is super-easy too!
build: build-js
build-js: static/bundle.js

# And so is cleaning.
clean:
	rm static/*.js

# Change any JS in src/ and it will know to rebuild your bundle.js. Neato!
# Old Unix stuff is so cool.
static/bundle.js: src/*.js
	browserify src/main.js > $@
