render
updateTextSize

	(self usernameUpdateTextField contents size > self maxUsernameSize)
		ifTrue: [usernameSizeLabel textColor: Color red];
		ifFalse: [usernameSizeLabel textColor: Color black].
	self usernameSizeLabel contents: (usernameUpdateTextField contents size asString, '/', self maxUsernameSize) asHtmlText.
	
	(self descriptionTextField contents size > self maxProfileDescriptionSize)
		ifTrue: [descriptionSizeLabel textColor: Color red];
		ifFalse: [descriptionSizeLabel textColor: Color black].
	self descriptionSizeLabel contents: (descriptionTextField contents size asString, '/', self maxProfileDescriptionSize) asHtmlText