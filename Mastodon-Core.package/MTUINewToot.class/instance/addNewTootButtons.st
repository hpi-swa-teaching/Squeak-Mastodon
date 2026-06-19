render
addNewTootButtons
	| sendButton |
	
	sendButton := UiPushButton new.
	sendButton text: 'Toot'.
	self
		connect: sendButton
 		signal: #clicked:
 		toSelector: #toot.
	
	self addMorphBack: sendButton.