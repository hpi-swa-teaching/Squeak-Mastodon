authentication
verifyCredentials

	| url response json account handle |
	url := self buildUrl: '/xrpc/com.atproto.server.getSession'.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky credentials request failed'].
	[
		json := self deserialize: response.
		handle := json at: 'handle' ifAbsent: [''].
		account := MTAccount new.
		account
			id: (json at: 'did' ifAbsent: ['']);
			username: handle;
			acct: handle;
			displayName: handle.
		^ MTResult value: account]
		on: Error
		do: [:ex | ^ MTResult error: 'BlueSky credentials processing failed']