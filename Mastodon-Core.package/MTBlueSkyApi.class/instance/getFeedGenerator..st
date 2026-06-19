endpoints
getFeedGenerator: aFeedUri
	| url response json view |
	url := self buildUrl: '/xrpc/app.bsky.feed.getFeedGenerator?feed=', aFeedUri.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky feed generator request failed'].
	
	[
		json := self deserialize: response.
		view := json at: 'view' ifAbsent: [Dictionary new].
		^ MTResult value: (self feedFromGeneratorView: view)
	] on: Error do: [:ex |
		^ MTResult error: 'BlueSky feed generator processing failed'
	].
