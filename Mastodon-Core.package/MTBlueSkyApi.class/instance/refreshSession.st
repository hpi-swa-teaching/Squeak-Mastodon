authentication
refreshSession

	| url response json succeeded |
	self refreshToken ifNil: [^ false].
	url := self buildUrl: '/xrpc/com.atproto.server.refreshSession'.
	response := self retryNetworkRequest: [
		self webClient httpPost: url content: '' type: 'application/json' do: [:req |
			req addHeader: 'Authorization' value: 'Bearer ', self refreshToken]].
	(response isNil or: [response isSuccess not]) ifTrue: [^ false].
	succeeded := [
		json := self deserialize: response content utf8ToSqueak.
		self token: (json at: 'accessJwt' ifAbsent: [self token]).
		self refreshToken: (json at: 'refreshJwt' ifAbsent: [self refreshToken]).
		MTSettingsStore default at: #token put: self token.
		MTSettingsStore default at: #refreshToken put: self refreshToken.
		true]
		on: Error
		do: [:ex | false].
	^ succeeded