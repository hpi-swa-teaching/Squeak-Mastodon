endpoints
getPreferences

	| url response json |
	url := self buildUrl: '/xrpc/app.bsky.actor.getPreferences'.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky preferences request failed'].
	
	[
		json := self deserialize: response.
		^ MTResult value: (json at: 'preferences' ifAbsent: [#()])]
		on: Error
		do: [:ex | ^ MTResult error: 'BlueSky preferences processing failed']