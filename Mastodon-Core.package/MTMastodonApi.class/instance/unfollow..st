endpoints
unfollow: aUserID
	| url response json |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/unfollow'.
	response := webClient httpPost: url 
			content: ''
			type: 'application/x-www-form-urlencoded'
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	json := self deserialize: (response content).
	^ json.