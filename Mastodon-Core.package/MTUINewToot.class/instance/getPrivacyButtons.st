render-buttons
getPrivacyButtons

	| wrapper |
	wrapper := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		layoutInset: -5;
		cellInset: 5;
		color: Color transparent.
	
	wrapper addMorphBack: self visibilityButton;
		 addMorphBack: self quotePolicyButton.
	
	^ wrapper