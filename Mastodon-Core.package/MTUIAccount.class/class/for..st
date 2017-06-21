as yet unclassified
for: anAccount
	| tweetMorph | 
	tweetMorph := self new account: anAccount.
	tweetMorph render.
	
	^ tweetMorph