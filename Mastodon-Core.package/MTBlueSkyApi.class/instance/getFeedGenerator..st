endpoints
getFeedGenerator: aFeedUri
	| path url response json view |
	path := '/xrpc/app.bsky.feed.getFeedGenerator?feed=', (self urlEncode: aFeedUri).
	url := self buildUrl: path.
	response := self getAppViewRequest: url.
	response ifNil: [response := self getPublicAppViewRequest: path].
	response ifNil: [^ MTResult error: 'BlueSky feed information is temporarily unavailable'].
	
	[
		json := self deserialize: response.
		view := json at: 'view' ifAbsent: [Dictionary new].
		^ MTResult value: (self feedFromGeneratorView: view)
	] on: Error do: [:ex |
		^ MTResult error: 'BlueSky feed generator processing failed'
	].
