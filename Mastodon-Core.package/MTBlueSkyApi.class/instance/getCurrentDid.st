helpers
getCurrentDid

	| url response json |
	self did ifNotNil: [^ self did].
	url := self buildUrl: '/xrpc/com.atproto.server.getSession'.
	response := self getRequest: url.
	response ifNil: [^ nil].
	json := self deserialize: response.
	^ did := json at: 'did' ifAbsent: [nil]