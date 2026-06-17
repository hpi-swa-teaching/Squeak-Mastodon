render
privacyButtons

	| wrapper |
	wrapper := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 5;
		color: Color white.
	
	self visibilityButton: MTUIPushButton new.
	self connect: self visibilityButton signal: #clicked: toSelector: #showVisibilityWindow.
	self visibilitySetting: 'public'.
	wrapper addMorphBack: self visibilityButton.
	
	self quotePolicyButton: MTUIPushButton new.
	self connect: self quotePolicyButton signal: #clicked: toSelector: #showQuotePolicyWindow.
	self quotePolicySetting: nil.
	wrapper addMorphBack: self quotePolicyButton.
	
	^ wrapper