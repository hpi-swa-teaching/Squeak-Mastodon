render
addUpdateSection
	| updateButton requestWrapper avatarImageButton headerImageButton placeholderName placeholderNote row|
	
	self addMorphBack: (TextMorph new contents: '<b>Edit profile</b>' asHtmlText).
	
	requestWrapper := RectangleMorph new borderWidth: 1.
	requestWrapper := MTUIView setMorph: requestWrapper.
	
	placeholderName := 'New Username'.
	placeholderNote := 'New Description'.
	(mastodonApi notNil and: [mastodonApi token notNil]) ifTrue: [
		[	| account |
			account := (self mastodonApi verifyCredentials) value.
			account displayName ifNotNil: [ :dn | dn isEmpty ifFalse: [ placeholderName := dn ]].
			account note ifNotNil: [ :n | n isEmpty ifFalse: [ placeholderNote := n asString copyReplaceAll: '<br />' with: '' ]].
			placeholderNote := placeholderNote copyReplaceAll: '<p>' with: ''.
			placeholderNote := placeholderNote copyReplaceAll: '</p>' with: ''.
		] on: Error do: [ ]].
			
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
	
