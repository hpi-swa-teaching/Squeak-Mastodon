initialization
for: aToot with: aMTUser

	| tweetMorph |
	tweetMorph := self new
		toot: aToot;
		user: aMTUser.
	tweetMorph render.
	
	^ tweetMorph