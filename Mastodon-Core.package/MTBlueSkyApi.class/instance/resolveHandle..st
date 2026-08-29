helpers
resolveHandle: aHandle

	| url response json |
	url := self buildUrl: '/xrpc/com.atproto.identity.resolveHandle?handle=', aHandle.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky handle resolve request failed'].
	
	[
		json := self deserialize: response.
		^ MTResult value: (json at: 'did' ifAbsent: [''])]
		on: Error
		do: [:ex | ^ MTResult error: 'BlueSky handle resolve processing failed']