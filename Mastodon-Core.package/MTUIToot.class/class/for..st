initialization
for: aToot

	| tootMorph |
	tootMorph := self basicNew
		toot: aToot;
		account: aToot acct;
		initialize.
	tootMorph render.
	
	^ tootMorph