render
addNewTootButtons
	"| sendButton |"
	
	sendButton := MTUIPushButton new.
	sendButton text: 'Toot'.
	sendButton active: false.
	self
		connect: sendButton
 		signal: #clicked:
 		toSelector: #toot.
	
	self addMorphBack: sendButton.