actions
editToot: aScheduledTootMorph
	"""
	Open a new dialogue with save and abort button
	print the text into another submorph and invite to edit
	save will delete and reschedule
	"""
	| menu |
	menu := DialogWindow new.
	menu title: 'Edit toot'.
	menu addPaneMorph: (MTUITextMorph new
		textSize: 1;
		vResizing: #spaceFill;
		borderColor: Color lightGray;
		contents: aScheduledTootMorph text).
	menu createButton: 'Save' value: 'Test'.
	menu createCancelButton.
	self addMorph: menu.