render
addPrivacyButtons

	| wrapper |
	wrapper := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		layoutInset: -5;
		cellInset: 5;
		color: Color transparent.
	
	self visibilityButton: MTUIPushButton new.
	self visibilityButton setBalloonText: 'Choose who can see this toot'.
	self connect: self visibilityButton signal: #clicked: toSelector: #showVisibilityWindow.
	self visibilitySetting: 'public'.
	wrapper addMorphBack: self visibilityButton.
	
	self quotePolicyButton: MTUIPushButton new.
	self quotePolicyButton setBalloonText: 'Choose who can quote this toot'.
	self connect: self quotePolicyButton signal: #clicked: toSelector: #showQuotePolicyWindow.
	self quotePolicySetting: 'public'.
	wrapper addMorphBack: self quotePolicyButton.
	
	self addMorphBack: wrapper