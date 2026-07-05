render
updateTextSize

	(self usernameUpdateTextField contents size > 30)
		ifTrue: [self usernameSizeLabel textColor: Color red];
		ifFalse: [self usernameSizeLabel textColor: Color black].
	self usernameSizeLabel contents: (self usernameUpdateTextField contents size asString, '/30') asHtmlText.
	
	(self descriptionTextField contents size > 160)
		ifTrue: [self descriptionSizeLabel textColor: Color red];
		ifFalse: [self descriptionSizeLabel textColor: Color black].
	self descriptionSizeLabel contents: (self descriptionTextField contents size asString, '/160') asHtmlText