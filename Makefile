all:
	erb public/index.html.erb > public/index.html
	erb public/style.css.erb > public/style.css
	erb public/radios.html.erb > public/radios.html
	erb public/checkboxs.html.erb > public/checkboxs.html
