render
themeSelection

	| menu theme |
	menu := DialogWindow new.
	menu title: 'Themes & Colors'.
	menu createButton: 'Squeak/ Standard' value: 'one'.
	menu createButton: 'Squeak/ Colorful Windows' value: 'two'.
	menu createCancelButton.
	self addMorph: menu.
	
	theme := menu getUserResponse.
	self changeColorTo: theme.