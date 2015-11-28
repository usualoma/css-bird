ERB_FILES=$(shell find public -name '*.erb')
STATIC_FILES=$(shell find public -name '*.erb' | sed -e 's/\.erb$$//')

all: run

run:
	@rackup

static-files: ${STATIC_FILES}

clean:
	rm -f public/*.html public/*.css

deploy: static-files
	@source .env && sh -c "rsync -avz $$CSS_BIRD_RSYNC_OPTS --exclude '.DS_Store' --exclude '*rb' public/ $$CSS_BIRD_RSYNC_DEST"

public/index.html: public/index.html.erb public/constant.rb .env ${ERB_FILES}
	erb $< > $@

%.html: %.html.erb public/constant.rb .env
	erb $< > $@

%.css: %.css.erb public/constant.rb .env
	erb $< > $@
