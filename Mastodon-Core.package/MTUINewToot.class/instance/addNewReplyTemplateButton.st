render
addNewReplyTemplateButton
	| addTemplateButton |
	
	addTemplateButton := UiPushButton new.
	addTemplateButton text: 'Reply-Template'.
	self
		connect: addTemplateButton
		signal: #clicked:
		toSelector: #replyTemplate.
		
	self addMorphBack: addTemplateButton.