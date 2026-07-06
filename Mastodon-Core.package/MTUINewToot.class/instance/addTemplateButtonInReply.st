render
addTemplateButtonInReply

	| templateButton |
	templateButton := UiPushButton new.
	templateButton text: 'Reply-Templates'.
	self connect: templateButton signal: #clicked: toSelector: #useReplyTemplates.
	
	self addMorphBack: templateButton