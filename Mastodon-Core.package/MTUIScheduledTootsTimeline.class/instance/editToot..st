actions
editToot: aScheduledTootMorph
	"""
	Open a new dialogue with save and abort button
	print the text into another submorph and invite to edit
	save will delete and reschedule
	"""
	| menu editTextMorph newTootText |
	menu := DialogWindow new.
	menu title: 'Edit toot'.
	editTextMorph := TextMorph new
		hResizing: #spaceFill;
		color: Color white;
		contents: aScheduledTootMorph toot params text;
		wrapFlag: true.
	menu addMorphBack: editTextMorph.
	menu createButton: 'Save' value: editTextMorph contents.
	menu createCancelButton.
	self addMorph: menu.
	
	newTootText := menu getUserResponse.
	
	((self mastodonApi cancelScheduledToot: aScheduledTootMorph toot id) isError) ifFalse: [^ false].
	(self scheduleToot: newTootText at: (aScheduledTootMorph toot scheduledAt) visibility: 'public' withMedia: nil) ifTrue: [MTUtils showSuccessMessage: 'Toot edited successfully' on: self messageArea]