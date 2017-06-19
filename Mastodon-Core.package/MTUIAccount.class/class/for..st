as yet unclassified
for: anAccount
	| tweetMorph | 
	tweetMorph := self new toot: anAccount.
	tweetMorph render.
	
	^ tweetMorph