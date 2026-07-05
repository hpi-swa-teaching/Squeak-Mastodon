render
getNameText

	^ MTUITextMorph new
		hResizing: #spaceFill;
		contents: self account displayName;
		wrapFlag: true;
		addDependent: self;
		yourself