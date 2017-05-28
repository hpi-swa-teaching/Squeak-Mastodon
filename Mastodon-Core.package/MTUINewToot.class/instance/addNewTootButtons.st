as yet unclassified
addNewTootButtons
	| sendButton |
	
	sendButton := UiPushButton new.
	sendButton text: 'Tweet'.
	self
		connect: sendButton
 		signal: #clicked:
 		toSelector: #toot.
	
	self addMorphBack: sendButton.