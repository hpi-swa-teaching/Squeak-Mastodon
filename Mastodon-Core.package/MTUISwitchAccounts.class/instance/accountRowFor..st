render
accountRowFor: aCredential

	| text |
	text := self getFormattedTextFor: aCredential.
	
	^ self getRowContainer
		addMorphBack: (self labelFor: text);
		addMorphBack: ((self mastodonApi hasToken and: [aCredential = self mastodonApi getCurrentCredentials])
			ifTrue: [self getLogoutButtonFor: aCredential]
			ifFalse: [self getLoginButtonFor: aCredential]);
		addMorphBack: (self getDeleteButtonFor: aCredential)