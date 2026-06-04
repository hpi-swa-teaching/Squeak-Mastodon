render
addNewScheduleButton
	| sendButton |
	sendButton := UiPushButton new.
	sendButton text: 'Schedule'.
	self
		connect: sendButton
 		signal: #clicked:
 		toSelector: #scheduleToot.
	
	self addMorphBack: sendButton.