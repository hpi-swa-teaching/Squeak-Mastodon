image
pngTestStream

	| form stream |
	form := Form extent: 10 @ 10 depth: 32.
	
	stream := RWBinaryOrTextStream on: ByteArray new.
	PNGReadWriter putForm: form onStream: stream.
	
	stream reset.
	
	^ stream