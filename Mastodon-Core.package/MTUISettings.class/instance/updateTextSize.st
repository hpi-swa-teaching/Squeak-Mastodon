as yet unclassified
updateTextSize
	(self usernameUpdateTextField contents size) > 30
		ifTrue: [usernameSizeLabel textColor: Color red];
		ifFalse: [usernameSizeLabel textColor: Color black].
	self usernameSizeLabel contents: (usernameUpdateTextField contents size asString, '/30') asHtmlText.
	
	(self descriptionTextField contents size) > 160
		ifTrue: [descriptionSizeLabel textColor: Color red];
		ifFalse: [descriptionSizeLabel textColor: Color black].
	self descriptionSizeLabel contents: (descriptionTextField contents size asString, '/160') asHtmlText.