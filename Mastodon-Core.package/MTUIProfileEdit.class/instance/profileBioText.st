edit states
profileBioText

	^ self editedBio ifNil: [MTUtils asTextFromHtml: self account note]