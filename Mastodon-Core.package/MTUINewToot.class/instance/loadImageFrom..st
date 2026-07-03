image
loadImageFrom: aFileChooser

	| stream |
	stream := aFileChooser open.
	^ stream ifNotNil: [Form fromBinaryStream: stream]