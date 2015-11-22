all:
	erb public/index.html.erb > public/index.html
	erb public/style.css.erb > public/style.css
	erb public/radios.html.erb > public/radios.html
	erb public/checkboxs.html.erb > public/checkboxs.html
	erb public/hover.html.erb > public/hover.html
	erb public/animation.html.erb > public/animation.html

clean:
	rm -f public/*.html
