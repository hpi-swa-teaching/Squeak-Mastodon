render
addNewReplyTemplateButton
	| addTemplateButton |
	
	addTemplateButton := UiPushButton new.
	addTemplateButton text: 'Save Reply-Template'.
	self
		connect: addTemplateButton
		signal: #clicked:
		toSelector: #addReplyTemplate.
		
	self addMorphBack: addTemplateButton.