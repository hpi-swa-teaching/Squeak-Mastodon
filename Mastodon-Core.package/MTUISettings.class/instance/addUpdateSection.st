as yet unclassified
addUpdateSection
	| updateButton requestWrapper avatarImageButton headerImageButton |
	
	self addMorphBack: (TextMorph new contents: '<b>Edit profile</b>' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper 
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #topLeft;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #left;
		color: Color white;
		cellInset: 10;
		borderWidth: 1.
			
	usernameUpdateTextField := MTUITextMorph new.
	usernameUpdateTextField 
		textSize: 1;
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: 'New Username'.
	requestWrapper addMorphBack: usernameUpdateTextField.
		
	self usernameSizeLabel: (TextMorph new contents: (usernameUpdateTextField contents size asString , '/30') asHtmlText).
	requestWrapper addMorphBack: usernameSizeLabel.
	
	descriptionTextField := MTUITextMorph new.
	descriptionTextField 
		textSize: 1;
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: 'New Description'.
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
	
