actions
loadCurrentProfile
	| account currentName currentNote |
	(mastodonApi isNil or: [mastodonApi token isNil]) ifTrue: [^ self].
	[
		account := (mastodonApi verifyCredentials) value.
		currentName := account displayName ifNil: [''].
		currentNote := account note ifNil: [''].
		currentNote := (MTUtils asTextFromHtml: currentNote).
		usernameUpdateTextField contents: currentName.
		descriptionTextField contents: currentNote.
		usernameSizeLabel contents: (currentName size asString , '/30') asHtmlText.
		descriptionSizeLabel contents: (currentNote size asString , '/160') asHtmlText.
	] on: Error do: [ ]