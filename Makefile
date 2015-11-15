all:
	erb public/index.html.erb > index.html
	erb public/style.css.erb > public/style.css
