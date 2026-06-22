initialization
for: aToot with: aMTUser

	| tootMorph |
	tootMorph := self basicNew
		toot: aToot;
		account: aMTUser;
		initialize.
	tootMorph render.
	
	^ tootMorph