endpoints
getPrivateTimeline
	| url response json |
	url := self baseURL, '/api/v1/timelines/home'.
	response := webClient httpGet: url
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	json := self deserialize: (response content).
	^ json.