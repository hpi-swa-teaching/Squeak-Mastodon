helpers
getRequest: url
	| response json |
	response := webClient httpGet: url
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	json := self deserialize: (response content).
	^ json.