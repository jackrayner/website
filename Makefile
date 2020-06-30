# Jack Rayner - me@jrayner.net

.PHONY: install serve update clean

clean:
	rm Gemfile.lock

setup:
	gem install --user-install bundler
	bundle install

serve: setup
	bundle exec jekyll serve

update: setup
	bundle update github-pages

userve: serve update
