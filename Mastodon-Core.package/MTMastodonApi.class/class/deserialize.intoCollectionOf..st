initialization
deserialize: aJsonString intoCollectionOf: aClass

	| parsedJson result |
	aJsonString ifNil: [^ OrderedCollection new].
	parsedJson := [(Json new stream: (ReadStream on: aJsonString)) readAny] on: Error do: [:e | nil].
	((parsedJson isKindOf: Array) or: [parsedJson isKindOf: OrderedCollection])
		ifFalse: [^ OrderedCollection new].
	result := OrderedCollection new.
	parsedJson do: [:jsonObject | [result add: (aClass from: jsonObject)] on: Error do: [:e | nil]].
	^ result