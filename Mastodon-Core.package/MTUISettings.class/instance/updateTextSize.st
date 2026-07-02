render
updateTextSize

	(self usernameUpdateTextField contents size > self maxUsernameSize)
		ifTrue: [self usernameSizeLabel textColor: Color red];
		ifFalse: [self usernameSizeLabel textColor: Color black].
	self usernameSizeLabel contents: (self usernameUpdateTextField contents size asString, '/', self maxUsernameSize) asHtmlText.
	
	(self descriptionTextField contents size > self maxProfileDescriptionSize)
		ifTrue: [self descriptionSizeLabel textColor: Color red];
		ifFalse: [self descriptionSizeLabel textColor: Color black].
	self descriptionSizeLabel contents: (self descriptionTextField contents size asString, '/', self maxProfileDescriptionSize) asHtmlText