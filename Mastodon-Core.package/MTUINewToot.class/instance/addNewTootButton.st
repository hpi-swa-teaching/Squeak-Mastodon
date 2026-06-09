render
addNewTootButton

	self sendButton: MTUIPushButton new.
	self sendButton text: 'Toot'.
	self sendButton enabled: false.
	self connect: self sendButton signal: #clicked: toSelector: #toot.
	
	self addMorphBack: self sendButton