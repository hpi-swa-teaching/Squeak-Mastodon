render
addScheduleButton: aContainer

	| sendButton |
	sendButton := UiPushButton new.
	sendButton text: 'Schedule'.
	self connect: sendButton signal: #clicked: toSelector: #scheduleToot.
	aContainer add: sendButton