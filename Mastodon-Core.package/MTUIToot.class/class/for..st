initialize
for: aToot
	| tweetMorph | 
	tweetMorph := self new toot: aToot.
	tweetMorph render.
	
	^ tweetMorph