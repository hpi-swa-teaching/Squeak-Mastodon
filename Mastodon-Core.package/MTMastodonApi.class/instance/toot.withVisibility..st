endpoints
toot: aString withVisibility: aVisibility
	| url parameters response |
	url := self urlForPath: '/api/v1/statuses'.
	parameters := Dictionary newFromPairs: {'status'. aString . 'visibility'. aVisibility}.
	response := self postRequest: url withParameters: parameters.
	
	"
	ToDo: Später in TimeLine anzeigen"
	^ MTResult value: (self class deserialize: response intoObjectOf: MTToot)