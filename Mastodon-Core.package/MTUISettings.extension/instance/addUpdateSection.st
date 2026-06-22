render
addUpdateSection

	| updateButton requestWrapper avatarImageButton headerImageButton row |
	self addMorphBack: (TextMorph new contents: '<b>Edit profile</b>' asHtmlText).
	
	requestWrapper := self applyLayoutTo: (RectangleMorph new borderWidth: 1).
	
	usernameUpdateTextField := self applyLayoutToTextField: MTUITextMorph new withContent: 'New Username'.
	requestWrapper addMorphBack: (TextMorph new contents: '<u>Display Name</u>' asHtmlText).
	requestWrapper addMorphBack: usernameUpdateTextField.
	
	self usernameSizeLabel: (TextMorph new contents: (usernameUpdateTextField contents size asString, '/30') asHtmlText).
	requestWrapper addMorphBack: usernameSizeLabel.
	
	descriptionTextField := self applyLayoutToTextField: MTUITextMorph new withContent: 'New Description'.
	requestWrapper addMorphBack: (TextMorph new contents: '<u>Bio</u>' asHtmlText).
	requestWrapper addMorphBack: descriptionTextField.
	
	self descriptionSizeLabel: (TextMorph new contents: (descriptionTextField contents size asString, '/160') asHtmlText).
	requestWrapper addMorphBack: descriptionSizeLabel.
	
	avatarImageButton := UiPushButton new.
	avatarImageButton text: 'select Avatar Image'.
	self connect: avatarImageButton signal: #clicked: toSelector: #selectAvatarImage.
	requestWrapper addMorphBack: avatarImageButton.
	
	headerImageButton := UiPushButton new.
	headerImageButton text: 'select Header Image'.
	self connect: headerImageButton signal: #clicked: toSelector: #selectHeaderImage.
	requestWrapper addMorphBack: headerImageButton.
	
	updateButton := UiPushButton new.
	updateButton text: 'Save Changes'.
	self connect: updateButton signal: #clicked: toSelector: #updateProfile.
	
	updateStatusLabel := TextMorph new contents: ' '.
	
	row := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #leftCenter;
		cellInset: 0;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		color: Color transparent.
	row addMorphBack: updateButton.
	row addMorphBack: updateStatusLabel.
	requestWrapper addMorphBack: row.
	
	self addMorphBack: requestWrapper.