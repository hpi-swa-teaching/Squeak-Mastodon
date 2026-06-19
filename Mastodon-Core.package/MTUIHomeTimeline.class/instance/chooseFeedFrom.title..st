actions
chooseFeedFrom: aCollection title: aTitle
	| menu |
	aCollection isEmpty ifTrue: [^ nil].
	menu := DialogWindow new.
	menu title: aTitle.
	aCollection do: [:feed | menu createButton: feed displayName value: feed].
	menu createCancelButton.
	self addMorph: menu.
	^ menu getUserResponse
