utilities
chooseTemplate: userTemplates

	| menu |
	menu := DialogWindow new.
	menu title: 'Choose template'.
	
	userTemplates do: [:template | menu createButton: template name value: template].
	menu createCancelButton.
	self addMorph: menu.
	
	^ menu getUserResponse