endpoints
toot: aString
	| url parameters response |
	url := self baseURL, '/api/v1/statuses'.
	parameters := Dictionary newFromPairs: {'status'. aString}.
	response := self postRequest: url withParameters: parameters.
	
	"
	ToDo: Später in TimeLine anzeigen
	^ MTResult value: (self deserialize: (response content) intoCollectionOf: MTToot)."