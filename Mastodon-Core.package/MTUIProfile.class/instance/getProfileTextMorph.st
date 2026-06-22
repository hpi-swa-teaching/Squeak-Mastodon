render
getProfileTextMorph

	^ TextMorph new
		contentsWrapped: self getProfileText;
		wrapFlag: true;
		width: 500;
		color: Color white;
		centered;
		lock;
		yourself