render
updateTextSize
	usernameSizeLabel textColor: (self usernameUpdateTextField contents size > 30
		ifTrue: [Color red]
		ifFalse: [Color black]).
	self usernameSizeLabel contents: (usernameUpdateTextField contents size asString, '/30') asHtmlText.

	descriptionSizeLabel textColor: (self descriptionTextField contents size > 160
		ifTrue: [Color red]
		ifFalse: [Color black]).
	self descriptionSizeLabel contents: (descriptionTextField contents size asString, '/160') asHtmlText