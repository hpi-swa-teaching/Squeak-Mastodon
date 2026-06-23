endpoints
getPublicTimeline
	| url response parsed toots |
	url := self buildUrl: '/api/v1/timelines/public'.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'Could not load public timeline'].
	parsed := [(Json new stream: (ReadStream on: response)) readAny] on: Error do: [:e | nil].
	((parsed isKindOf: Array) or: [parsed isKindOf: OrderedCollection])
		ifFalse: [^ MTResult error: 'Could not load public timeline'].
	toots := OrderedCollection new.
	parsed do: [:each |
		[toots add: (MTToot from: each)] on: Error do: [:e | nil]].
	(parsed notEmpty and: [toots isEmpty]) ifTrue: [^ MTResult error: 'Could not load public timeline'].
	^ MTResult value: toots