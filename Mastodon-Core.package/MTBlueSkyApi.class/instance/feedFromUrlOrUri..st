helpers
feedFromUrlOrUri: aString

	| input parts feedIndex actor rkey resolved did uri |
	input := aString withBlanksTrimmed.
	input isEmpty ifTrue: [^ MTResult error: 'Invalid Bluesky feed link'].
	(input beginsWith: 'at://') ifTrue: [^ self getFeedGenerator: input].
	
	parts := input findTokens: '/'.
	feedIndex := parts indexOf: 'feed'.
	(feedIndex = 0 or: [feedIndex <= 1 or: [feedIndex >= parts size]]) ifTrue: [^ MTResult error: 'Invalid Bluesky feed link'].
	
	actor := parts at: feedIndex - 1.
	rkey := parts at: feedIndex + 1.
	rkey := (rkey copyUpTo: $?) copyUpTo: $#.
	(actor beginsWith: '@') ifTrue: [actor := actor allButFirst].
	did := (actor beginsWith: 'did:') ifTrue: [actor] ifFalse: [
		resolved := self resolveHandle: actor.
		resolved isError ifTrue: [^ resolved].
		resolved value].
	uri := 'at://', did, '/app.bsky.feed.generator/', rkey.
	^ self getFeedGenerator: uri