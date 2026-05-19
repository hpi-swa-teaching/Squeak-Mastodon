helpers
getCurrentDid
	| url response json |
	url := self buildUrl: '/xrpc/com.atproto.server.getSession'.
	response := self getRequest: url.
	response ifNil: [^ nil].
	json := self deserialize: response.
	^ json at: 'did' ifAbsent: [nil]