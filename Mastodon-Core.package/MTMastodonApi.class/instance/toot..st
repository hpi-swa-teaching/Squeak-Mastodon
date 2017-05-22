endpoints
toot: aString
	| url parameters response json |
	url := self baseURL, '/api/v1/statuses'.
	parameters := Dictionary newFromPairs: {'status'. aString}.
	response := webClient httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: parameters)
			type: 'application/x-www-form-urlencoded'
			do: [:req | req addHeader: 'Authorization' value: 'Bearer ', self token].
	json := self deserialize: (response content).
	"Transcript show: response content."
	^ json.