STATIC_FILES=$(shell find public -name '*.erb' | sed -e 's/\.erb$$//')

all: static-files

static-files: ${STATIC_FILES}

clean:
	rm -f public/*.html public/*.css

deploy: static-files
	@source .env && sh -c "rsync -avz $$CSS_BIRD_RSYNC_OPTS --exclude '.DS_Store' --exclude '*rb' public/ $$CSS_BIRD_RSYNC_DEST"

%.html: %.html.erb public/constant.rb .env
	erb $< > $@

%.css: %.css.erb public/constant.rb .env
	erb $< > $@
