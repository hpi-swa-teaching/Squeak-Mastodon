render
addNewTootButtons

	sendButton := MTUIPushButton new.
	sendButton text: 'Toot'.
	sendButton enabled: false.
	self connect: sendButton signal: #clicked: toSelector: #toot.
	
	self addMorphBack: sendButton