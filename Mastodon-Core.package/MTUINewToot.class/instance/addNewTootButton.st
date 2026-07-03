render-buttons
addNewTootButton

	self sendButton: MTUIPushButton new.
	self sendButton text: 'Toot'.
	self sendButton setBalloonText: 'Post new toot'.
	self sendButton enabled: false.
	self connect: self sendButton signal: #clicked: toSelector: #toot.
	
	self addMorphBack: self sendButton