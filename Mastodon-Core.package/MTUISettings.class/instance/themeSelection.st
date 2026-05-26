render
themeSelection

	| menu theme |
	menu := DialogWindow new.
	menu title: 'Themes & Colours'.
	menu createButton: 'Theme 1' value: 'one'.
	menu createButton: 'Theme 2' value: 'two'.
	menu createButton: 'Theme 3' value: 'three'.
	menu createCancelButton.
	self addMorph: menu.
	
	theme := menu getUserResponse.
	self changeColourTo: theme.