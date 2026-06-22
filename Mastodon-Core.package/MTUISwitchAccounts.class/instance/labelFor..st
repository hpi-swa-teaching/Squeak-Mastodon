helpers
labelFor: aString

	^ TextMorph new
		contents: aString;
		color: Color black;
		lock;
		yourself