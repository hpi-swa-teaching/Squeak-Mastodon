render
addDeleteReplyTemplateButton
	| deleteTemplateButton |
	
	deleteTemplateButton := UiPushButton new.
	deleteTemplateButton text: 'Delete Reply-Template'.
	self
		connect: deleteTemplateButton
		signal: #clicked:
		toSelector: #deleteReplyTemplate.
		
	self addMorphBack: deleteTemplateButton.