as yet unclassified
addUpdateSection
	| updateButton requestWrapper avatarImageButton headerImageButton |
	
	self addMorphBack: (TextMorph new contents: '<b>Edit profile</b>' asHtmlText).
	
	requestWrapper := RectangleMorph new borderWidth: 1.
	requestWrapper := MTUIView setMorph: requestWrapper.
			
	usernameUpdateTextField := MTUITextMorph new.
	usernameUpdateTextField := MTUIView setTextField: usernameUpdateTextField withContent: 'New Username'.
	requestWrapper addMorphBack: usernameUpdateTextField.
		
	self usernameSizeLabel: (TextMorph new contents: (usernameUpdateTextField contents size asString , '/30') asHtmlText).
	requestWrapper addMorphBack: usernameSizeLabel.
	
	descriptionTextField := MTUITextMorph new.
	descriptionTextField := MTUIView setTextField: descriptionTextField withContent: 'New Description'.
	requestWrapper addMorphBack: descriptionTextField.
	
	self descriptionSizeLabel: (TextMorph new contents: (usernameUpdateTextField contents size asString , '/160') asHtmlText).
	requestWrapper addMorphBack: descriptionSizeLabel.
	
	avatarImageButton := UiPushButton new.
	avatarImageButton text: 'select Avatar Image'.
	self
		connect: avatarImageButton
 		signal: #clicked:
 		toSelector: #selectAvatarImage.
	
	requestWrapper addMorphBack: avatarImageButton.
	
	headerImageButton := UiPushButton new.
	headerImageButton text: 'select Header Image'.
	self
		connect: headerImageButton
 		signal: #clicked:
 		toSelector: #selectHeaderImage.
	
	requestWrapper addMorphBack: headerImageButton.
	
	updateButton := UiPushButton new.
	updateButton text: 'Save Changes'.
	self
		connect: updateButton
 		signal: #clicked:
 		toSelector: #updateProfile.
	requestWrapper addMorphBack: updateButton.
	
	self addMorphBack: requestWrapper.
	
