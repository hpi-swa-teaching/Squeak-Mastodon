printing
format: dateTime

	| stream |
	stream := AttributedTextStream new.
	^ dateTime printOn: stream