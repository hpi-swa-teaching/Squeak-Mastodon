endpoints
getCurrentUser
	| url response json |
	url := self baseURL, '/api/v1/accounts/verify_credentials'.
	response := webClient httpGet: url
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	json := self deserialize: (response content).
	^ json.