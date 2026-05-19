endpoints
toot: aString withMedia: aMediaID withVisibility: aVisibility scheduleAt: aDateAndTime
	| url parameters response stream |
	stream := AttributedTextStream new.
	aDateAndTime printOn: stream.
	url := self buildUrl: '/api/v1/statuses'.
	parameters := Dictionary newFromPairs: {'status'. aString. 'visibility' . aVisibility . 'media_ids[]'. aMediaID . 'scheduled_at' . stream contents}.
	response := self postRequest: url withParameters: parameters.
	
	"
	ToDo: Später in TimeLine anzeigen
	^ MTResult value: (self deserialize: (response content) intoCollectionOf: MTToot)."