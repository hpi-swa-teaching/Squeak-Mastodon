authentification
verifyCredentials
	| url response json account handle |
	url := self buildUrl: '/xrpc/com.atproto.server.getSession'.
	response := self getRequest: url.
	json := self deserialize: response.
	handle := json at: 'handle' ifAbsent: [''].
	account := MTAccount new.
	account
		id: (json at: 'did' ifAbsent: ['']);
		username: handle;
		acct: handle;
		displayName: handle;
		yourself.
	^ MTResult value: account