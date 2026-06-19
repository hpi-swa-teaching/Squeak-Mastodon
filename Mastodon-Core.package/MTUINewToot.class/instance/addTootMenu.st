render
addTootMenu
	| menu |
	menu := DialogWindow new.
	menu title: 'Visibility'.
	menu createButton: 'public' value: 'public'.
	menu createButton: 'unlisted' value: 'unlisted'.
	menu createButton: 'private' value: 'private'.
	menu createButton: 'direct' value: 'direct'.
	menu createCancelButton.
	self addMorph: menu.
	^ menu