render
addTootMenu

	| menu |
	menu := DialogWindow new
		title: 'Visibility';
		createButton: 'public' value: 'public';
		createButton: 'unlisted' value: 'unlisted';
		createButton: 'private' value: 'private';
		createButton: 'direct' value: 'direct';
		createCancelButton.
		
	self addMorph: menu.
	^ menu getUserResponse