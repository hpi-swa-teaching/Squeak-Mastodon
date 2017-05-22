endpoints
reblog: aStatusID
	| url response json |
	url := self baseURL, '/api/v1/statuses/', aStatusID ,'/reblog'.
	response := webClient httpPost: url 
			content: ''
			type: 'application/x-www-form-urlencoded'
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	json := self deserialize: (response content).
	^ json.