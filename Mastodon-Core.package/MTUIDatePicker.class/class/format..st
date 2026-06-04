printing
format: dateTimeRes

	| stream |
	stream := AttributedTextStream new.
	^ dateTimeRes unwrap printOn: stream