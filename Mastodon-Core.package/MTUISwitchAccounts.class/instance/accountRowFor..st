render
accountRowFor: aCredential

	| text |
	text := self getFormattedTextFor: aCredential.
	
	^ self getRowContainer
		addMorphBack: (self labelFor: text);
		addMorphBack: (self getButtonContainer
			addMorphBack: (self getDeleteButtonFor: aCredential);
			addMorphBack: (self getLoginLogoutButtonFor: aCredential))