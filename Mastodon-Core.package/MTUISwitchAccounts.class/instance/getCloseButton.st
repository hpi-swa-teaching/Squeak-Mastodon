render-buttons
getCloseButton

	^ SimpleButtonMorph new
		label: 'X';
		target: self;
		actionSelector: #changeViewToProfileView;
		color: Color veryVeryLightGray;
		extent: 20 @ 20