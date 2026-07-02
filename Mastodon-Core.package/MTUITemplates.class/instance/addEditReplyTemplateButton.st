render
addEditReplyTemplateButton

	| editTemplateButton |
	editTemplateButton := UiPushButton new.
	editTemplateButton text: 'Edit Reply-Template'.
	self connect: editTemplateButton signal: #clicked: toSelector: #editReplyTemplate.
	
	self addMorphBack: editTemplateButton